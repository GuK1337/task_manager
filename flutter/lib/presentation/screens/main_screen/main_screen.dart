import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

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
          appBar: AppBar(
            title: const Text('Постановщик задач'),
            actions: [
              IconButton(
                onPressed: () => context.router.push(TaskFormRoute()),
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () => _showDialog(context),
                icon: const Icon(Icons.exit_to_app),
              ),
            ],
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors.white,
            ),
            child: NavigationBar(
              selectedIndex: context.tabsRouter.activeIndex,
              onDestinationSelected: (index) async {
                context.tabsRouter.setActiveIndex(index);
              },
              destinations: [
                buildBottomNavigationBarItem(
                    icon: const Icon(
                      Icons.access_time,
                    ),
                    label: 'Ждут'),
                buildBottomNavigationBarItem(
                  icon: const Icon(
                    Icons.work,
                  ),
                  label: 'Выполняю',
                ),
                buildBottomNavigationBarItem(
                    icon: const Icon(
                      Icons.create,
                    ),
                    label: 'Поручил'),
                buildBottomNavigationBarItem(
                  icon: const Icon(
                    Icons.archive,
                  ),
                  label: 'Архив',
                ),
              ],
            ),
          ),
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
          content: const Text('Вы действительно хотите выйти?'),
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
