import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  const AppBarButton({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final appColors =
        Theme.of(context).extension<CustomThemeExtension>()!.appColors;
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        decoration: ShapeDecoration(
          shape: const CircleBorder(),
          color: appColors.secondaryBackground,
        ),
        padding: const EdgeInsets.all(AppInsets.padding8),
        child: Padding(
          padding: const EdgeInsets.only(right: AppInsets.padding2),
          child: icon,
        ),
      ),
    );
  }
}
