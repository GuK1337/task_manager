import 'package:auto_route/auto_route.dart';
import 'package:example_app/domain/bloc/register_cubit/register_cubit.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

abstract class _RegisterFormKeys {
  static const login = 'login';
  static const password = 'password';
  static const password2 = 'password2';
  static const username = 'username';
}

@RoutePage()
class RegisterScreen extends StatelessWidget implements AutoRouteWrapper {
  RegisterScreen({super.key, this.onComplete});

  final VoidCallback? onComplete;

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
      ),
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
                  'РЕГИСТРАЦИЯ',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                FormBuilderTextField(
                  name: _RegisterFormKeys.login,
                  decoration: const InputDecoration(
                    labelText: 'Логин',
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
                  name: _RegisterFormKeys.username,
                  decoration: const InputDecoration(
                    labelText: 'Имя пользователя',
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
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  name: _RegisterFormKeys.password,
                  decoration: const InputDecoration(
                    labelText: 'Пароль',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                    FormBuilderValidators.maxLength(255),
                  ]),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                FormBuilderTextField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  name: _RegisterFormKeys.password2,
                  decoration: const InputDecoration(
                    labelText: 'Повторите пароль',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.minLength(6),
                    FormBuilderValidators.maxLength(255),
                    (value) {
                      if (value !=
                          _formKey.currentState
                              ?.value[_RegisterFormKeys.password]) {
                        return 'Пароли не совпадают';
                      }
                      return null;
                    }
                  ]),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                SrBlocBuilder<RegisterCubit, RegisterState, RegisterSr>(
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
                            final value = _formKey.currentState!.value;
                            context.read<RegisterCubit>().register(
                                  login: value[_RegisterFormKeys.login],
                                  password: value[_RegisterFormKeys.password],
                                  username: value[_RegisterFormKeys.username],
                                );
                          }
                        },
                        loading: () => null,
                      ),
                      child: state.maybeWhen(
                        orElse: () => const Text('Зарегистрироваться'),
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}
