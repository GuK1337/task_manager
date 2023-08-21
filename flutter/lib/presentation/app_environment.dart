// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_environment.freezed.dart';
part 'app_environment.g.dart';

/// Базовые настройки конфигруации при запуске приложения
@freezed
class AppEnvironment with _$AppEnvironment {
  const factory AppEnvironment({
    required String apiEndpoint,
  }) = _AppEnvironment;

  factory AppEnvironment.fromJson(Map<String, dynamic> json) =>
      _$AppEnvironmentFromJson(json);
}
