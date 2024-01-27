// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_environment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppEnvironment _$AppEnvironmentFromJson(Map<String, dynamic> json) {
  return _AppEnvironment.fromJson(json);
}

/// @nodoc
mixin _$AppEnvironment {
  String get apiEndpoint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppEnvironmentCopyWith<AppEnvironment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEnvironmentCopyWith<$Res> {
  factory $AppEnvironmentCopyWith(
          AppEnvironment value, $Res Function(AppEnvironment) then) =
      _$AppEnvironmentCopyWithImpl<$Res, AppEnvironment>;
  @useResult
  $Res call({String apiEndpoint});
}

/// @nodoc
class _$AppEnvironmentCopyWithImpl<$Res, $Val extends AppEnvironment>
    implements $AppEnvironmentCopyWith<$Res> {
  _$AppEnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiEndpoint = null,
  }) {
    return _then(_value.copyWith(
      apiEndpoint: null == apiEndpoint
          ? _value.apiEndpoint
          : apiEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppEnvironmentImplCopyWith<$Res>
    implements $AppEnvironmentCopyWith<$Res> {
  factory _$$AppEnvironmentImplCopyWith(_$AppEnvironmentImpl value,
          $Res Function(_$AppEnvironmentImpl) then) =
      __$$AppEnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String apiEndpoint});
}

/// @nodoc
class __$$AppEnvironmentImplCopyWithImpl<$Res>
    extends _$AppEnvironmentCopyWithImpl<$Res, _$AppEnvironmentImpl>
    implements _$$AppEnvironmentImplCopyWith<$Res> {
  __$$AppEnvironmentImplCopyWithImpl(
      _$AppEnvironmentImpl _value, $Res Function(_$AppEnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiEndpoint = null,
  }) {
    return _then(_$AppEnvironmentImpl(
      apiEndpoint: null == apiEndpoint
          ? _value.apiEndpoint
          : apiEndpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppEnvironmentImpl implements _AppEnvironment {
  const _$AppEnvironmentImpl({required this.apiEndpoint});

  factory _$AppEnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppEnvironmentImplFromJson(json);

  @override
  final String apiEndpoint;

  @override
  String toString() {
    return 'AppEnvironment(apiEndpoint: $apiEndpoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppEnvironmentImpl &&
            (identical(other.apiEndpoint, apiEndpoint) ||
                other.apiEndpoint == apiEndpoint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, apiEndpoint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppEnvironmentImplCopyWith<_$AppEnvironmentImpl> get copyWith =>
      __$$AppEnvironmentImplCopyWithImpl<_$AppEnvironmentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppEnvironmentImplToJson(
      this,
    );
  }
}

abstract class _AppEnvironment implements AppEnvironment {
  const factory _AppEnvironment({required final String apiEndpoint}) =
      _$AppEnvironmentImpl;

  factory _AppEnvironment.fromJson(Map<String, dynamic> json) =
      _$AppEnvironmentImpl.fromJson;

  @override
  String get apiEndpoint;
  @override
  @JsonKey(ignore: true)
  _$$AppEnvironmentImplCopyWith<_$AppEnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
