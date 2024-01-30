import 'package:auto_route/annotations.dart';
import 'package:example_app/presentation/theme/models/app_insets.dart';
import 'package:example_app/presentation/theme/models/colors/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_image_picker/form_builder_image_picker.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:image_picker/image_picker.dart';

typedef OnTaskResultConfirm = void Function(
    String? description, List<String>? images);

class _TaskResultFormKeys {
  static String description = 'description';
  static String images = 'images';
}

@RoutePage()
class AddTaskResultScreen extends StatefulWidget {
  const AddTaskResultScreen({
    super.key,
    required this.onConfirm,
  });

  final OnTaskResultConfirm onConfirm;

  @override
  State<AddTaskResultScreen> createState() => _AddTaskResultScreenState();
}

class _AddTaskResultScreenState extends State<AddTaskResultScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Комментарий',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                FormBuilderTextField(
                  name: _TaskResultFormKeys.description,
                  minLines: 4,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    hintText: 'Комментарий',
                  ),
                  validator: FormBuilderValidators.maxLength(255),
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
                  name: _TaskResultFormKeys.images,
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
                    hintText: "Добавьте до 10 изображений",
                    contentPadding: EdgeInsets.all(AppInsets.padding8),
                  ),
                  maxImages: 10,
                  cameraLabel: const Text('Камера'),
                  galleryLabel: const Text('Галерея'),
                ),
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.saveAndValidate()) {
                      final value = _formKey.currentState!.value;
                      widget.onConfirm.call(
                          value[_TaskResultFormKeys.description],
                          ((value[_TaskResultFormKeys.images] as Iterable?))
                              ?.map((e) => (e as XFile).path)
                              .toList());
                    }
                  },
                  child: const Text('Сохранить'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
