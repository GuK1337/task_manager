import 'package:auto_route/auto_route.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:flutter/material.dart';

Route<T> modalDialogBuilder<T>(
    BuildContext context, Widget child, AutoRoutePage<T> page) {
  return DialogRoute<T>(
    builder: (context) => Padding(
      padding: const EdgeInsets.all(AppInsets.padding32),
      child: Center(
        child: child,
      ),
    ),
    barrierColor: const Color(0x55000000),
    settings: page,
    context: context,
  );
}
