import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/short_user_info/short_user_info.dart';
import 'package:example_app/domain/bloc/user_list_bloc/user_list_bloc.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

typedef OnUserSelected = void Function(ShortUserInfo user);

@RoutePage()
class UserListScreen extends StatelessWidget implements AutoRouteWrapper {
  const UserListScreen({
    super.key,
    this.selectedUser,
  });

  final ShortUserInfo? selectedUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const AutoLeadingButton(),
        title: const Text('Выбрать пользователя'),
      ),
      body: SafeArea(
        child: SrBlocBuilder<UserListBloc, UserListState, UserListSr>(
          onSR: (context, sr) => switch (sr) {
            UserListSr(error: var e) =>
              Messenger.showMessage(context: context, message: e),
          },
          buildWhen: (state, oldState) => state.status != oldState.status,
          builder: (context, state) {
            return switch (state.status) {
              UserListStatus.init => const UserListLoadingView(),
              UserListStatus.loading => const UserListLoadingView(),
              UserListStatus.ready => UserListView(
                  selectedUser: selectedUser,
                  onUserSelected: (user) => context.router.pop(user),
                ),
            };
          },
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserListBloc>(
      create: (context) => GetIt.I.get()..add(const UserListEvent.loadData()),
      child: this,
    );
  }
}

class UserListLoadingView extends StatelessWidget {
  const UserListLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator.adaptive(),
    );
  }
}

class _UserListFormKeys {
  static String user = 'user';
}

class UserListView extends StatefulWidget {
  const UserListView({
    super.key,
    this.selectedUser,
    this.onUserSelected,
  });

  final ShortUserInfo? selectedUser;
  final OnUserSelected? onUserSelected;

  @override
  State<UserListView> createState() => _UserListViewState();
}

class _UserListViewState extends State<UserListView> {
  final _formKey = GlobalKey<FormBuilderState>();

  bool isButtonDisabled = false;

  FormBuilderState get _form => _formKey.currentState!;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      checkField();
    });
  }

  void checkField() {
    setState(() {
      final field = _form.fields[_UserListFormKeys.user];
      if (field == null || !field.isValid) {
        isButtonDisabled = true;
        return;
      }
      isButtonDisabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserListBloc, UserListState>(
      listener: (context, state) {
        if (_formKey.currentState == null) return;
        final value = _form.fields[_UserListFormKeys.user]?.value;
        if (value == null) {
          return;
        }
        if (!state.users!.contains(value)) {
          _formKey.currentState!.patchValue({
            _UserListFormKeys.user: null,
          });
        }
      },
      child: FormBuilder(
        key: _formKey,
        onChanged: () {
          checkField();
        },
        clearValueOnUnregister: true,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: SearchBar(
                hintText: 'Поиск',
                onChanged: (value) {
                  context.read<UserListBloc>().add(
                        UserListEvent.loadData(query: value),
                      );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<UserListBloc, UserListState>(
                buildWhen: (state, oldState) => state.users != oldState.users,
                builder: (context, state) {
                  final users = state.users!;
                  if (users.isEmpty) {
                    return const Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.all(AppInsets.padding16),
                        child: Text('Пользователей не найдено'),
                      ),
                    );
                  }
                  return FormBuilderRadioGroup<ShortUserInfo>(
                    validator: FormBuilderValidators.required(),
                    name: _UserListFormKeys.user,
                    initialValue: widget.selectedUser,
                    controlAffinity: ControlAffinity.trailing,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      filled: false,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppInsets.padding16,
                      ),
                    ),
                    options: users
                        .map(
                          (e) => FormBuilderFieldOption<ShortUserInfo>(
                            value: e,
                            child: SizedBox(
                              width: double.infinity,
                              child: Text(
                                e.username,
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: TextButton(
                onPressed: isButtonDisabled
                    ? null
                    : () {
                        if (_formKey.currentState!.saveAndValidate()) {
                          widget.onUserSelected?.call(
                            _formKey
                                .currentState!.value[_UserListFormKeys.user],
                          );
                        }
                      },
                child: const Text('Выбрать'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  const UserItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
