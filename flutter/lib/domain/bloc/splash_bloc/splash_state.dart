part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.init() = SplashInitState;

  const factory SplashState.loading() = SplashLoadingState;

  const factory SplashState.ready() = SplashReadyState;

  const factory SplashState.error(String error) = SplashErrorState;
}
