import 'package:auto_route/auto_route.dart';
import 'package:example_app/data/models/new_task/new_task.dart';
import 'package:example_app/data/models/short_user_info/short_user_info.dart';
import 'package:example_app/domain/bloc/create_new_task_cubit/create_new_task_cubit.dart';
import 'package:example_app/presentation/router/app_router.gr.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
import 'package:example_app/utils/dio_error_handler/dio_error_handler.dart';
import 'package:example_app/utils/sr_bloc/sr_bloc_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';

abstract class _TaskFormKeys {
  static const _title = 'title';
  static const _description = 'description';
  static const _image = 'image';
  static const _executor = 'executor';
}

@RoutePage()
class TaskFormScreen extends StatelessWidget implements AutoRouteWrapper {
  TaskFormScreen({super.key});

  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Создание новой задачи'),
      ),
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                  child: ListView(
                padding: const EdgeInsets.all(AppInsets.padding16),
                children: [
                  Text(
                    'Имя задачи',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding16,
                  ),
                  FormBuilderTextField(
                    name: _TaskFormKeys._title,
                    decoration: const InputDecoration(
                      hintText: 'Наименование',
                    ),
                    valueTransformer: (value) => value?.trim(),
                    validator: FormBuilderValidators.compose(
                      [
                        FormBuilderValidators.required(),
                        FormBuilderValidators.maxLength(255),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding24,
                  ),
                  Text(
                    'Описание',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding16,
                  ),
                  FormBuilderTextField(
                    name: _TaskFormKeys._description,
                    minLines: 4,
                    maxLines: 10,
                    decoration: const InputDecoration(
                      hintText: 'Описание',
                    ),
                    valueTransformer: (value) => value?.trim(),
                    validator: FormBuilderValidators.required(),
                  ),
                  const SizedBox(
                    height: AppInsets.padding24,
                  ),
                  Text(
                    'Изображения',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding4,
                  ),
                  Text(
                    'Добавьте до 10 изображений',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context)
                              .extension<CustomThemeExtension>()!
                              .labelColor,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding16,
                  ),
                  FormBuilderImagePicker(
                    imageQuality: 50,
                    bottomSheetPadding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewPadding.bottom),
                    placeholderWidget: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        width: AppInsets.padding64,
                        height: AppInsets.padding64,
                        child: Card(
                          color: Theme.of(context).colorScheme.background,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                AppInsets.inputBorderRadius),
                          ),
                          child: Center(
                            child: Icon(
                              CupertinoIcons.camera,
                              color: Theme.of(context)
                                  .extension<CustomThemeExtension>()!
                                  .labelColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    previewHeight: AppInsets.padding64,
                    previewWidth: AppInsets.padding64 + AppInsets.padding8,
                    previewMargin:
                        const EdgeInsets.only(right: AppInsets.padding8),
                    name: _TaskFormKeys._image,
                    previewAutoSizeWidth: false,
                    transformImageWidget: (context, image) {
                      return SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppInsets.inputBorderRadius,
                            ),
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: image,
                        ),
                      );
                    },
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(AppInsets.padding8),
                    ),
                    maxImages: 10,
                    cameraLabel: const Text('Камера'),
                    galleryLabel: const Text('Галерея'),
                  ),
                  const SizedBox(
                    height: AppInsets.padding24,
                  ),
                  Text(
                    'Исполнитель',
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  const SizedBox(
                    height: AppInsets.padding16,
                  ),
                  FormBuilderField<ShortUserInfo>(
                    builder: (field) {
                      if (field.value == null) {
                        return ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              AppInsets.inputBorderRadius,
                            ),
                          ),
                          onTap: () async {
                            final result =
                                await context.router.push(UserListRoute());
                            if (result is ShortUserInfo && field.mounted) {
                              field.didChange(result);
                            }
                          },
                          title: const Text('Выберите исполнителя'),
                          trailing: const Icon(
                            CupertinoIcons.right_chevron,
                          ),
                        );
                      }
                      return ListTile(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppInsets.inputBorderRadius,
                          ),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: AppInsets.padding16,
                          right: 0.0,
                        ),
                        textColor: Theme.of(context).colorScheme.onPrimary,
                        tileColor: Theme.of(context).colorScheme.primary,
                        title: Text(field.value!.username),
                        iconColor: Theme.of(context).colorScheme.onPrimary,
                        trailing: IconButton(
                          onPressed: () {
                            field.didChange(null);
                          },
                          icon: const Icon(
                            CupertinoIcons.clear_circled_solid,
                          ),
                        ),
                      );
                    },
                    name: _TaskFormKeys._executor,
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.all(AppInsets.padding16),
                child: SrBlocBuilder<CreateNewTaskCubit, CreateNewTaskState,
                    CreateNewTaskSr>(
                  onSR: (context, sr) => sr.when(
                    success: () {
                      Messenger.showMessage(
                        context: context,
                        message: 'Задача успешно создана',
                        messageType: MessageType.success,
                      );
                      return context.router.pop();
                    },
                    error: (error) =>
                        Messenger.showMessage(context: context, message: error),
                  ),
                  builder: (context, state) {
                    return TextButton(
                      onPressed: state.maybeWhen(
                        orElse: () => () {
                          if (_formKey.currentState!.saveAndValidate()) {
                            final value = _formKey.currentState!.value;
                            context.read<CreateNewTaskCubit>().create(
                                  NewTask(
                                    title: value[_TaskFormKeys._title],
                                    description:
                                        value[_TaskFormKeys._description],
                                    imagePaths: ((value[_TaskFormKeys._image]
                                                as Iterable?))
                                            ?.map((e) => (e as XFile).path)
                                            .toList() ??
                                        [],
                                    executor: value[_TaskFormKeys._executor]
                                        as ShortUserInfo?,
                                  ),
                                );
                          }
                        },
                        loading: () => null,
                      ),
                      child: state.maybeWhen(
                        orElse: () => const Text('Создать'),
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
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<CreateNewTaskCubit>(
      create: (context) => GetIt.I.get(),
      child: this,
    );
  }
}
