import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/presentation/components/app_bar_button.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'dart:math' as math;

const kFABSize = 60.0;
const kFABYOffset = 0.0;
const _kMainAppBarHeight = 70.0;

class _CenterDockedFabLocation extends StandardFabLocation
    with FabCenterOffsetX, FabDockedOffsetY2 {
  const _CenterDockedFabLocation();

  @override
  String toString() => 'FloatingActionButtonLocation.centerDocked';
}

mixin FabDockedOffsetY2 on StandardFabLocation {
  /// Calculates y-offset for [FloatingActionButtonLocation]s floating over the
  /// [Scaffold.bottomNavigationBar] so that the center of the floating
  /// action button lines up with the top of the bottom navigation bar.
  @override
  double getOffsetY(
      ScaffoldPrelayoutGeometry scaffoldGeometry, double adjustment) {
    final double contentBottom = scaffoldGeometry.contentBottom;
    final double contentMargin =
        scaffoldGeometry.scaffoldSize.height - contentBottom;
    final double bottomViewPadding = scaffoldGeometry.minViewPadding.bottom;
    final double bottomSheetHeight = scaffoldGeometry.bottomSheetSize.height;
    final double fabHeight = scaffoldGeometry.floatingActionButtonSize.height;
    final double snackBarHeight = scaffoldGeometry.snackBarSize.height;
    final double bottomMinInset = scaffoldGeometry.minInsets.bottom;

    double safeMargin;

    if (contentMargin > bottomMinInset + fabHeight / 2.0) {
      // If contentMargin is higher than bottomMinInset enough to display the
      // FAB without clipping, don't provide a margin
      safeMargin = 0.0;
    } else if (bottomMinInset == 0.0) {
      // If bottomMinInset is zero(the software keyboard is not on the screen)
      // provide bottomViewPadding as margin
      safeMargin = bottomViewPadding;
    } else {
      // Provide a margin that would shift the FAB enough so that it stays away
      // from the keyboard
      safeMargin = fabHeight / 2.0 + kFloatingActionButtonMargin;
    }

    double fabY = contentBottom - fabHeight / 2.0 - safeMargin;
    // The FAB should sit with a margin between it and the snack bar.
    if (snackBarHeight > 0.0) {
      fabY = math.min(
          fabY,
          contentBottom -
              snackBarHeight -
              fabHeight -
              kFloatingActionButtonMargin);
    }
    // The FAB should sit with its center in front of the top of the bottom sheet.
    if (bottomSheetHeight > 0.0) {
      fabY =
          math.min(fabY, contentBottom - bottomSheetHeight - fabHeight / 2.0);
    }
    final double maxFabY =
        scaffoldGeometry.scaffoldSize.height - fabHeight - safeMargin;
    return math.min(maxFabY, fabY) + kFABYOffset;
  }
}

@RoutePage()
class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        NewTasksRoute(),
        InProgressTasksRoute(),
        InstructedTasksRoute(),
        ArchiveTasksRoute(),
      ],
      homeIndex: 0,
      builder: (context, child) {
        return Scaffold(
          floatingActionButtonLocation: const _CenterDockedFabLocation(),
          floatingActionButton: SizedBox(
            width: kFABSize,
            height: kFABSize,
            child: FloatingActionButton.large(
              shape: const CircleBorder(),
              onPressed: () {
                context.router.push(TaskFormRoute());
              },
              child: const Icon(Icons.add),
            ),
          ),
          appBar: AppBar(
            title: const Text('Главная'),
            actions: [
              AppBarButton(
                onPressed: () => _showDialog(context),
                icon: const Icon(Icons.exit_to_app),
              ),
            ],
          ),
          bottomNavigationBar: MainAppBar(),
          body: child,
        );
      },
    );
  }

  Future<void> _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(20.0),
          content: Text(
            'Вы действительно хотите выйти?',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Нет'),
              onPressed: () {
                context.router.pop();
              },
            ),
            const SizedBox(
              height: AppInsets.padding16,
            ),
            TextButton(
              child: const Text('Да'),
              onPressed: () {
                context.router.pop();
                GetIt.I.get<AuthRepository>().logout();
              },
            ),
          ],
        );
      },
    );
  }

  NavigationDestination buildBottomNavigationBarItem(
      {required Widget icon, required String label}) {
    return NavigationDestination(
      icon: icon,
      label: label,
    );
  }
}

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoTabsRouter.of(context, watch: true);

    return Material(
      type: MaterialType.transparency,
      color: Colors.red,
      child: BottomAppBar(
        padding: const EdgeInsets.only(
          top: AppInsets.padding4,
          bottom: AppInsets.padding4,
          left: AppInsets.padding8,
          right: AppInsets.padding8,
        ),
        height: _kMainAppBarHeight,
        child: SizedBox(
          height: _kMainAppBarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildBottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.time,
                ),
                selectedIcon: const Icon(
                  CupertinoIcons.time_solid,
                ),
                label: 'Ждут',
                onPreessed: () => router.setActiveIndex(0),
                isSelected: router.activeIndex == 0,
              ),
              buildBottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.briefcase,
                ),
                selectedIcon: const Icon(
                  CupertinoIcons.briefcase_fill,
                ),
                label: 'Выполняю',
                onPreessed: () => router.setActiveIndex(1),
                isSelected: router.activeIndex == 1,
              ),
              const SizedBox(
                width: kFABSize,
              ),
              buildBottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.doc,
                ),
                selectedIcon: const Icon(
                  CupertinoIcons.doc_fill,
                ),
                label: 'Поручил',
                onPreessed: () => router.setActiveIndex(2),
                isSelected: router.activeIndex == 2,
              ),
              buildBottomNavigationBarItem(
                icon: const Icon(
                  CupertinoIcons.archivebox,
                ),
                selectedIcon: const Icon(
                  CupertinoIcons.archivebox_fill,
                ),
                label: 'Архив',
                onPreessed: () => router.setActiveIndex(3),
                isSelected: router.activeIndex == 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildBottomNavigationBarItem({
    required Widget icon,
    Widget? selectedIcon,
    required String label,
    bool isSelected = false,
    required VoidCallback onPreessed,
  }) {
    return Expanded(
      child: MainBottomBarItem(
        isSelected: isSelected,
        selectedIcon: selectedIcon,
        icon: icon,
        onPressed: onPreessed,
        text: const Text('Каталог'),
      ),
    );
  }
}

class MainBottomBarItem extends StatelessWidget {
  const MainBottomBarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.selectedIcon,
    this.isSelected = false,
  });

  final Widget icon;
  final Widget? selectedIcon;
  final Widget text;
  final VoidCallback onPressed;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final textStyle = (isSelected
            ? Theme.of(context).bottomNavigationBarTheme.selectedLabelStyle
            : Theme.of(context)
                .bottomNavigationBarTheme
                .unselectedLabelStyle) ??
        const TextStyle();
    final color = isSelected
        ? Theme.of(context).bottomNavigationBarTheme.selectedItemColor
        : Theme.of(context).bottomNavigationBarTheme.unselectedItemColor;

    return InkResponse(
      onTap: onPressed,
      child: Material(
        color: Colors.transparent,
        child: IconTheme.merge(
          data: IconThemeData(color: color),
          child: DefaultTextStyle.merge(
            style: textStyle.copyWith(color: color),
            child: Center(
              child:
                  (selectedIcon != null && isSelected) ? selectedIcon! : icon,
            ),
          ),
        ),
      ),
    );
  }
}
