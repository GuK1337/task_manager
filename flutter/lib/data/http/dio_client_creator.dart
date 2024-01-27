import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:example_app/presentation/app_environment.dart';
import 'package:flutter/foundation.dart';

abstract class DioClientCreator {
  Dio makeDioApiClient();
}

class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = Duration(milliseconds: 5000);
  static const defaultReceiveTimeout = Duration(milliseconds: 25000);

  DioClientCreatorImpl({
    required this.appEnvironment,
  });

  final AppEnvironment appEnvironment;

  @override
  Dio makeDioApiClient() => _baseDio(appEnvironment.apiEndpoint);

  Dio _baseDio(final String url) {
    final startDio = Dio();
    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;
    startDio.transformer = FlutterTransformer();
    return startDio;
  }
}

class FlutterTransformer extends DefaultTransformer {
  FlutterTransformer() : super(jsonDecodeCallback: _parseJson);
}

dynamic _parseAndDecode(String response) {
  return jsonDecode(response);
}

Future _parseJson(String text) {
  return compute<String, dynamic>(_parseAndDecode, text);
}
