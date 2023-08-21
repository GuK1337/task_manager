import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:example_app/data/const/injectable_names.dart';
import 'package:example_app/presentation/app_environment.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

import 'dio_client_creator.dart';

@module
abstract class DioClientModule {
  @singleton
  DioClientCreator dioClientCreator(AppEnvironment appEnvironment) =>
      DioClientCreatorImpl(
        appEnvironment: appEnvironment,
      );

  @Named(InjectableNames.apiClient)
  @singleton
  Dio makeDioProductsClient(DioClientCreator dioClientCreator) =>
      dioClientCreator.makeDioApiClient();

  @Named(InjectableNames.apiClient)
  @lazySingleton
  DioErrorHandler<DefaultApiError> makeDioOrderErrorHandler() =>
      DioErrorHandlerImpl<DefaultApiError>(
        connectivity: Connectivity(),
        parseJsonApiError: (json) async {
          if (json != null && json['code'] != 0) {
            return DefaultApiError(
              code: json['code'].toString(),
              msg: json['message'],
            );
          }
          return null;
        },
      );
}

class TestConnectivity implements Connectivity {
  @override
  Future<ConnectivityResult> checkConnectivity() {
    return SynchronousFuture(ConnectivityResult.wifi);
  }

  @override
  Stream<ConnectivityResult> get onConnectivityChanged => const Stream.empty();
}
