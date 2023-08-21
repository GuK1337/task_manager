import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends SrCubit<AuthState, AuthSr> {
  AuthCubit({
    required this.authRepository,
  }) : super(const AuthState.ready());

  @protected
  final AuthRepository authRepository;

  Future<void> auth(String login) async {
    if (state is _Loading) {
      return;
    }
    emit(const AuthState.loading());
    final response = await authRepository.auth(login);
    if (response.hasError) {
      addError(response.error);
      emit(const AuthState.ready());
      addSr(AuthSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(const AuthState.ready());
    addSr(const AuthSr.login());
  }
}
