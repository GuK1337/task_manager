import 'package:auto_route/auto_route.dart';
import 'package:example_app/domain/bloc/auth_cubit/auth_cubit.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

abstract class _AuthFormKeys {
  static const login = 'login';
  static const password = 'password';
}

@RoutePage()
class AuthScreen extends StatelessWidget implements AutoRouteWrapper {
  AuthScreen({super.key, this.onComplete});

  final VoidCallback? onComplete;

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ВХОД',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                FormBuilderTextField(
                  name: _AuthFormKeys.login,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Логин',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(255),
                  ]),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                FormBuilderTextField(
                  name: _AuthFormKeys.password,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: const InputDecoration(
                    hintText: 'Пароль',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(255),
                  ]),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                SrBlocBuilder<AuthCubit, AuthState, AuthSr>(
                  onSR: (context, sr) => sr.when(
                    login: () => onComplete?.call(),
                    error: (error) =>
                        Messenger.showMessage(context: context, message: error),
                  ),
                  builder: (context, state) {
                    return TextButton(
                      onPressed: state.maybeWhen(
                        orElse: () => () {
                          if (_formKey.currentState!.saveAndValidate()) {
                            context.read<AuthCubit>().auth(
                                login: _formKey
                                    .currentState!.value[_AuthFormKeys.login],
                                password: _formKey.currentState!
                                    .value[_AuthFormKeys.password]);
                          }
                        },
                        loading: () => null,
                      ),
                      child: state.maybeWhen(
                        orElse: () => const Text('Войти'),
                        loading: () => SizedBox(
                          width: 15.0,
                          height: 15.0,
                          child: CircularProgressIndicator(
                            strokeWidth: 2.0,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                OutlinedButton(
                  onPressed: () => context.router.push(
                    RegisterRoute(
                      onComplete: () {
                        context.router.pop();
                        onComplete?.call();
                      },
                    ),
                  ),
                  child: const Text('Регистрация'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AuthCubit>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}
