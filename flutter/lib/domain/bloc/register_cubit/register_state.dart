part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.ready() = _Ready;

  const factory RegisterState.loading() = _Loading;
}

@freezed
class RegisterSr with _$RegisterSr {
  const factory RegisterSr.login() = _RegisterSrLogin;
  const factory RegisterSr.error(String error) = _RegisterSrError;
}
