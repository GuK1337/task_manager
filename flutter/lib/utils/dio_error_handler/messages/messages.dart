import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';

abstract class ErrorMessages {
  ErrorMessages._();

  static String getMessage(CommonResponseError error) {
    return error.map(
      unAuthorized: (value) => unAuthorized,
      tooManyRequests: (value) => tooManyRequests,
      noNetwork: (value) => noNetwork,
      undefinedError: (value) => undefinedError,
      customError: (value) {
        final error = value.customError;
        if (error is DefaultApiError) {
          return error.msg;
        }
        return error.toString();
      },
    );
  }

  static String unAuthorized = 'Ошибка авторизации.';
  static String tooManyRequests = 'Превышено количество запросов.';
  static String noNetwork = 'Нет подключения к сети.';
  static String undefinedError = 'Неизвестная ошибка.';
  static String qrScanUndefinedError = 'Ошибка при считывании QR кода.';
  static String minOrderPriseErrorMessage = 'Сумма заказа меньше минимальной.';
  static String preOrderDisabled = 'Оформление заказа временно недоступно.';
  static String pointNotSelected = 'Точка самовывоза не выбрана';
  static String orderError = 'Не удалось создать заказ';
  static String orderOfferError =
      'Необходимо принять условия договора публичной оферты';
}

enum MessageType {
  success,
  error,
  warning,
  message,
}
