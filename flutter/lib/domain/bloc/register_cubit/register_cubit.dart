import 'package:example_app/data/repository/auth_repository.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

@injectable
class RegisterCubit extends SrCubit<RegisterState, RegisterSr> {
  RegisterCubit({
    required this.authRepository,
  }) : super(const RegisterState.ready());

  @protected
  final AuthRepository authRepository;

  Future<void> register({
    required String login,
    required String password,
    required String username,
  }) async {
    if (state is _Loading) {
      return;
    }
    emit(const RegisterState.loading());
    final response = await authRepository.register(
        login: login, password: password, username: username);
    if (response.hasError) {
      addError(response.error);
      emit(const RegisterState.ready());
      addSr(RegisterSr.error(ErrorMessages.getMessage(response.error)));
      return;
    }
    emit(const RegisterState.ready());
    addSr(const RegisterSr.login());
  }
}
