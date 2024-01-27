// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiResponse<Error, Result> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Result result) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? error,
    TResult? Function(Result result)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Result result)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseError<Error, Result> value) error,
    required TResult Function(_ApiResponseSuccess<Error, Result> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseError<Error, Result> value)? error,
    TResult? Function(_ApiResponseSuccess<Error, Result> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseError<Error, Result> value)? error,
    TResult Function(_ApiResponseSuccess<Error, Result> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<Error, Result, $Res> {
  factory $ApiResponseCopyWith(ApiResponse<Error, Result> value,
          $Res Function(ApiResponse<Error, Result>) then) =
      _$ApiResponseCopyWithImpl<Error, Result, $Res,
          ApiResponse<Error, Result>>;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<Error, Result, $Res,
        $Val extends ApiResponse<Error, Result>>
    implements $ApiResponseCopyWith<Error, Result, $Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApiResponseErrorImplCopyWith<Error, Result, $Res> {
  factory _$$ApiResponseErrorImplCopyWith(
          _$ApiResponseErrorImpl<Error, Result> value,
          $Res Function(_$ApiResponseErrorImpl<Error, Result>) then) =
      __$$ApiResponseErrorImplCopyWithImpl<Error, Result, $Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$ApiResponseErrorImplCopyWithImpl<Error, Result, $Res>
    extends _$ApiResponseCopyWithImpl<Error, Result, $Res,
        _$ApiResponseErrorImpl<Error, Result>>
    implements _$$ApiResponseErrorImplCopyWith<Error, Result, $Res> {
  __$$ApiResponseErrorImplCopyWithImpl(
      _$ApiResponseErrorImpl<Error, Result> _value,
      $Res Function(_$ApiResponseErrorImpl<Error, Result>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$ApiResponseErrorImpl<Error, Result>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$ApiResponseErrorImpl<Error, Result>
    extends _ApiResponseError<Error, Result> with DiagnosticableTreeMixin {
  const _$ApiResponseErrorImpl(this.error) : super._();

  @override
  final Error error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$Error, $Result>.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$Error, $Result>.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseErrorImpl<Error, Result> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseErrorImplCopyWith<Error, Result,
          _$ApiResponseErrorImpl<Error, Result>>
      get copyWith => __$$ApiResponseErrorImplCopyWithImpl<Error, Result,
          _$ApiResponseErrorImpl<Error, Result>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Result result) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? error,
    TResult? Function(Result result)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Result result)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseError<Error, Result> value) error,
    required TResult Function(_ApiResponseSuccess<Error, Result> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseError<Error, Result> value)? error,
    TResult? Function(_ApiResponseSuccess<Error, Result> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseError<Error, Result> value)? error,
    TResult Function(_ApiResponseSuccess<Error, Result> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ApiResponseError<Error, Result>
    extends ApiResponse<Error, Result> {
  const factory _ApiResponseError(final Error error) =
      _$ApiResponseErrorImpl<Error, Result>;
  const _ApiResponseError._() : super._();

  Error get error;
  @JsonKey(ignore: true)
  _$$ApiResponseErrorImplCopyWith<Error, Result,
          _$ApiResponseErrorImpl<Error, Result>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiResponseSuccessImplCopyWith<Error, Result, $Res> {
  factory _$$ApiResponseSuccessImplCopyWith(
          _$ApiResponseSuccessImpl<Error, Result> value,
          $Res Function(_$ApiResponseSuccessImpl<Error, Result>) then) =
      __$$ApiResponseSuccessImplCopyWithImpl<Error, Result, $Res>;
  @useResult
  $Res call({Result result});
}

/// @nodoc
class __$$ApiResponseSuccessImplCopyWithImpl<Error, Result, $Res>
    extends _$ApiResponseCopyWithImpl<Error, Result, $Res,
        _$ApiResponseSuccessImpl<Error, Result>>
    implements _$$ApiResponseSuccessImplCopyWith<Error, Result, $Res> {
  __$$ApiResponseSuccessImplCopyWithImpl(
      _$ApiResponseSuccessImpl<Error, Result> _value,
      $Res Function(_$ApiResponseSuccessImpl<Error, Result>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$ApiResponseSuccessImpl<Error, Result>(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$ApiResponseSuccessImpl<Error, Result>
    extends _ApiResponseSuccess<Error, Result> with DiagnosticableTreeMixin {
  const _$ApiResponseSuccessImpl(this.result) : super._();

  @override
  final Result result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiResponse<$Error, $Result>.success(result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiResponse<$Error, $Result>.success'))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseSuccessImpl<Error, Result> &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseSuccessImplCopyWith<Error, Result,
          _$ApiResponseSuccessImpl<Error, Result>>
      get copyWith => __$$ApiResponseSuccessImplCopyWithImpl<Error, Result,
          _$ApiResponseSuccessImpl<Error, Result>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) error,
    required TResult Function(Result result) success,
  }) {
    return success(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? error,
    TResult? Function(Result result)? success,
  }) {
    return success?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? error,
    TResult Function(Result result)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiResponseError<Error, Result> value) error,
    required TResult Function(_ApiResponseSuccess<Error, Result> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ApiResponseError<Error, Result> value)? error,
    TResult? Function(_ApiResponseSuccess<Error, Result> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiResponseError<Error, Result> value)? error,
    TResult Function(_ApiResponseSuccess<Error, Result> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _ApiResponseSuccess<Error, Result>
    extends ApiResponse<Error, Result> {
  const factory _ApiResponseSuccess(final Result result) =
      _$ApiResponseSuccessImpl<Error, Result>;
  const _ApiResponseSuccess._() : super._();

  Result get result;
  @JsonKey(ignore: true)
  _$$ApiResponseSuccessImplCopyWith<Error, Result,
          _$ApiResponseSuccessImpl<Error, Result>>
      get copyWith => throw _privateConstructorUsedError;
}
