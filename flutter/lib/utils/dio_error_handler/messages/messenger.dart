import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';

import 'messages.dart';

abstract class Messenger {
  Messenger._();

  static void showMessage({
    required BuildContext context,
    required String message,
    Duration? duration = const Duration(seconds: 3),
    flashStyle = FlashBehavior.floating,
    messageType = MessageType.error,
  }) {
    if (messageType == MessageType.error) {
      message = message.replaceAll(RegExp(r'^Exception:|Exception'), '');
    }
    final title = _getMessageTitle(messageType);
    final colors = _getMessageColor(messageType);
    showFlash(
      context: context,
      duration: duration,
      builder: (context, controller) {
        return FlashBar(
          dismissDirections: const [
            FlashDismissDirection.endToStart,
            FlashDismissDirection.startToEnd,
          ],
          behavior: flashStyle,
          backgroundColor: colors.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppInsets.cardBorderRadius),
          ),
          margin: const EdgeInsets.all(AppInsets.padding16),
          position: FlashPosition.top,
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (title != null) ...[
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: colors.foregroundColor,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
              ],
              Text(
                message,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      color: colors.foregroundColor,
                    ),
              ),
            ],
          ),
          controller: controller,
        );
      },
    );
  }

  static MessageColors _getMessageColor(MessageType messageType) {
    switch (messageType) {
      case MessageType.success:
        return MessageColors(
          foregroundColor: Colors.white,
          backgroundColor: const Color(0xFF4CAF50),
        );
      case MessageType.error:
        return MessageColors(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red,
        );
      case MessageType.warning:
        return MessageColors(
          foregroundColor: Colors.black,
          backgroundColor: Colors.orange,
        );
      case MessageType.message:
        return MessageColors(
          foregroundColor: Colors.black,
          backgroundColor: Colors.blue,
        );
    }
  }

  static String? _getMessageTitle(MessageType messageType) {
    switch (messageType) {
      case MessageType.success:
        return 'Успешно';
      case MessageType.error:
        return 'Ошибка';
      case MessageType.warning:
        return 'Внимание';
      case MessageType.message:
        return null;
    }
  }
}

class MessageColors {
  MessageColors({
    required this.foregroundColor,
    required this.backgroundColor,
  });

  final Color backgroundColor;
  final Color foregroundColor;
}
