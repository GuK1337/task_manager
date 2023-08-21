part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.ready() = _Ready;

  const factory AuthState.loading() = _Loading;
}

@freezed
class AuthSr with _$AuthSr {
  const factory AuthSr.login() = _AuthSrLogin;
  const factory AuthSr.error(String error) = _AuthSrError;
}
