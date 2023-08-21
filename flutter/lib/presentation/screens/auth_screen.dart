import 'package:auto_route/auto_route.dart';
import 'package:example_app/domain/bloc/auth_cubit/auth_cubit.dart';
import 'package:example_app/presentation/app/theme/models/app_insets.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

abstract class _AuthFormKeys {
  static const _login = 'login';
}

@RoutePage()
class AuthScreen extends StatelessWidget with AutoRouteWrapper {
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
            padding: const EdgeInsets.all(AppInsets.padding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'ВХОД',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: AppInsets.padding,
                ),
                FormBuilderTextField(
                  name: _AuthFormKeys._login,
                  decoration: const InputDecoration(
                    labelText: 'Логин',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(255),
                  ]),
                ),
                const SizedBox(
                  height: AppInsets.padding,
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
                            context.read<AuthCubit>().auth(_formKey
                                .currentState!.value[_AuthFormKeys._login]);
                          }
                        },
                        loading: () => null,
                      ),
                      child: state.maybeWhen(
                        orElse: () => const Text('ВОЙТИ'),
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
    return BlocProvider<AuthCubit>(
      create: (_) => GetIt.I.get(),
      child: this,
    );
  }
}
