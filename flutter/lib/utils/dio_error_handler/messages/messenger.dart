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
        return Flash(
          controller: controller,
          behavior: flashStyle,
          backgroundColor: colors.backgroundColor,
          borderRadius: BorderRadius.circular(10.0),
          margin: const EdgeInsets.all(20.0),
          position: FlashPosition.top,
          boxShadows: kElevationToShadow[8],
          horizontalDismissDirection: HorizontalDismissDirection.horizontal,
          child: FlashBar(
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (title != null) ...[
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: colors.foregroundColor,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: colors.foregroundColor,
                      ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static MessageColors _getMessageColor(MessageType messageType) {
    switch (messageType) {
      case MessageType.success:
        return MessageColors(
          foregroundColor: Colors.white,
          backgroundColor: Colors.green.shade700,
        );
      case MessageType.error:
        return MessageColors(
          foregroundColor: Colors.white,
          backgroundColor: Colors.red.shade700,
        );
      case MessageType.warning:
        return MessageColors(
          foregroundColor: Colors.black,
          backgroundColor: Colors.yellow.shade700,
        );
      case MessageType.message:
        return MessageColors(
          foregroundColor: Colors.white,
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
