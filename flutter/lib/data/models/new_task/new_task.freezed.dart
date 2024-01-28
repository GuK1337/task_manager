// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewTask _$NewTaskFromJson(Map<String, dynamic> json) {
  return _NewTask.fromJson(json);
}

/// @nodoc
mixin _$NewTask {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String> get imagePaths => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewTaskCopyWith<NewTask> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskCopyWith<$Res> {
  factory $NewTaskCopyWith(NewTask value, $Res Function(NewTask) then) =
      _$NewTaskCopyWithImpl<$Res, NewTask>;
  @useResult
  $Res call({String title, String? description, List<String> imagePaths});
}

/// @nodoc
class _$NewTaskCopyWithImpl<$Res, $Val extends NewTask>
    implements $NewTaskCopyWith<$Res> {
  _$NewTaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? imagePaths = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePaths: null == imagePaths
          ? _value.imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewTaskImplCopyWith<$Res> implements $NewTaskCopyWith<$Res> {
  factory _$$NewTaskImplCopyWith(
          _$NewTaskImpl value, $Res Function(_$NewTaskImpl) then) =
      __$$NewTaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, List<String> imagePaths});
}

/// @nodoc
class __$$NewTaskImplCopyWithImpl<$Res>
    extends _$NewTaskCopyWithImpl<$Res, _$NewTaskImpl>
    implements _$$NewTaskImplCopyWith<$Res> {
  __$$NewTaskImplCopyWithImpl(
      _$NewTaskImpl _value, $Res Function(_$NewTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? imagePaths = null,
  }) {
    return _then(_$NewTaskImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imagePaths: null == imagePaths
          ? _value._imagePaths
          : imagePaths // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewTaskImpl with DiagnosticableTreeMixin implements _NewTask {
  const _$NewTaskImpl(
      {required this.title,
      this.description,
      required final List<String> imagePaths})
      : _imagePaths = imagePaths;

  factory _$NewTaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewTaskImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  final List<String> _imagePaths;
  @override
  List<String> get imagePaths {
    if (_imagePaths is EqualUnmodifiableListView) return _imagePaths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePaths);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NewTask(title: $title, description: $description, imagePaths: $imagePaths)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NewTask'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('imagePaths', imagePaths));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewTaskImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._imagePaths, _imagePaths));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(_imagePaths));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewTaskImplCopyWith<_$NewTaskImpl> get copyWith =>
      __$$NewTaskImplCopyWithImpl<_$NewTaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewTaskImplToJson(
      this,
    );
  }
}

abstract class _NewTask implements NewTask {
  const factory _NewTask(
      {required final String title,
      final String? description,
      required final List<String> imagePaths}) = _$NewTaskImpl;

  factory _NewTask.fromJson(Map<String, dynamic> json) = _$NewTaskImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  List<String> get imagePaths;
  @override
  @JsonKey(ignore: true)
  _$$NewTaskImplCopyWith<_$NewTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
