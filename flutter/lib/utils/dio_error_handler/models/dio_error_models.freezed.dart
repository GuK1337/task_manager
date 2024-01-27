// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dio_error_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommonResponseError<Custom> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonResponseErrorCopyWith<Custom, $Res> {
  factory $CommonResponseErrorCopyWith(CommonResponseError<Custom> value,
          $Res Function(CommonResponseError<Custom>) then) =
      _$CommonResponseErrorCopyWithImpl<Custom, $Res,
          CommonResponseError<Custom>>;
}

/// @nodoc
class _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        $Val extends CommonResponseError<Custom>>
    implements $CommonResponseErrorCopyWith<Custom, $Res> {
  _$CommonResponseErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoNetworkImplCopyWith<Custom, $Res> {
  factory _$$NoNetworkImplCopyWith(_$NoNetworkImpl<Custom> value,
          $Res Function(_$NoNetworkImpl<Custom>) then) =
      __$$NoNetworkImplCopyWithImpl<Custom, $Res>;
}

/// @nodoc
class __$$NoNetworkImplCopyWithImpl<Custom, $Res>
    extends _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        _$NoNetworkImpl<Custom>>
    implements _$$NoNetworkImplCopyWith<Custom, $Res> {
  __$$NoNetworkImplCopyWithImpl(_$NoNetworkImpl<Custom> _value,
      $Res Function(_$NoNetworkImpl<Custom>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoNetworkImpl<Custom> extends _NoNetwork<Custom> {
  const _$NoNetworkImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$Custom>.noNetwork()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoNetworkImpl<Custom>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) {
    return noNetwork();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) {
    return noNetwork?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) {
    return noNetwork(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) {
    return noNetwork?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (noNetwork != null) {
      return noNetwork(this);
    }
    return orElse();
  }
}

abstract class _NoNetwork<Custom> extends CommonResponseError<Custom> {
  const factory _NoNetwork() = _$NoNetworkImpl<Custom>;
  const _NoNetwork._() : super._();
}

/// @nodoc
abstract class _$$UnAuthorizedImplCopyWith<Custom, $Res> {
  factory _$$UnAuthorizedImplCopyWith(_$UnAuthorizedImpl<Custom> value,
          $Res Function(_$UnAuthorizedImpl<Custom>) then) =
      __$$UnAuthorizedImplCopyWithImpl<Custom, $Res>;
}

/// @nodoc
class __$$UnAuthorizedImplCopyWithImpl<Custom, $Res>
    extends _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        _$UnAuthorizedImpl<Custom>>
    implements _$$UnAuthorizedImplCopyWith<Custom, $Res> {
  __$$UnAuthorizedImplCopyWithImpl(_$UnAuthorizedImpl<Custom> _value,
      $Res Function(_$UnAuthorizedImpl<Custom>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthorizedImpl<Custom> extends _UnAuthorized<Custom> {
  const _$UnAuthorizedImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$Custom>.unAuthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnAuthorizedImpl<Custom>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized<Custom> extends CommonResponseError<Custom> {
  const factory _UnAuthorized() = _$UnAuthorizedImpl<Custom>;
  const _UnAuthorized._() : super._();
}

/// @nodoc
abstract class _$$TooManyRequestsImplCopyWith<Custom, $Res> {
  factory _$$TooManyRequestsImplCopyWith(_$TooManyRequestsImpl<Custom> value,
          $Res Function(_$TooManyRequestsImpl<Custom>) then) =
      __$$TooManyRequestsImplCopyWithImpl<Custom, $Res>;
}

/// @nodoc
class __$$TooManyRequestsImplCopyWithImpl<Custom, $Res>
    extends _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        _$TooManyRequestsImpl<Custom>>
    implements _$$TooManyRequestsImplCopyWith<Custom, $Res> {
  __$$TooManyRequestsImplCopyWithImpl(_$TooManyRequestsImpl<Custom> _value,
      $Res Function(_$TooManyRequestsImpl<Custom>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TooManyRequestsImpl<Custom> extends _TooManyRequests<Custom> {
  const _$TooManyRequestsImpl() : super._();

  @override
  String toString() {
    return 'CommonResponseError<$Custom>.tooManyRequests()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TooManyRequestsImpl<Custom>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) {
    return tooManyRequests?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) {
    return tooManyRequests?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class _TooManyRequests<Custom> extends CommonResponseError<Custom> {
  const factory _TooManyRequests() = _$TooManyRequestsImpl<Custom>;
  const _TooManyRequests._() : super._();
}

/// @nodoc
abstract class _$$CustomErrorImplCopyWith<Custom, $Res> {
  factory _$$CustomErrorImplCopyWith(_$CustomErrorImpl<Custom> value,
          $Res Function(_$CustomErrorImpl<Custom>) then) =
      __$$CustomErrorImplCopyWithImpl<Custom, $Res>;
  @useResult
  $Res call({Custom customError});
}

/// @nodoc
class __$$CustomErrorImplCopyWithImpl<Custom, $Res>
    extends _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        _$CustomErrorImpl<Custom>>
    implements _$$CustomErrorImplCopyWith<Custom, $Res> {
  __$$CustomErrorImplCopyWithImpl(_$CustomErrorImpl<Custom> _value,
      $Res Function(_$CustomErrorImpl<Custom>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customError = freezed,
  }) {
    return _then(_$CustomErrorImpl<Custom>(
      freezed == customError
          ? _value.customError
          : customError // ignore: cast_nullable_to_non_nullable
              as Custom,
    ));
  }
}

/// @nodoc

class _$CustomErrorImpl<Custom> extends _CustomError<Custom> {
  const _$CustomErrorImpl(this.customError) : super._();

  @override
  final Custom customError;

  @override
  String toString() {
    return 'CommonResponseError<$Custom>.customError(customError: $customError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomErrorImpl<Custom> &&
            const DeepCollectionEquality()
                .equals(other.customError, customError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(customError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomErrorImplCopyWith<Custom, _$CustomErrorImpl<Custom>> get copyWith =>
      __$$CustomErrorImplCopyWithImpl<Custom, _$CustomErrorImpl<Custom>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) {
    return customError(this.customError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) {
    return customError?.call(this.customError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this.customError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) {
    return customError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) {
    return customError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (customError != null) {
      return customError(this);
    }
    return orElse();
  }
}

abstract class _CustomError<Custom> extends CommonResponseError<Custom> {
  const factory _CustomError(final Custom customError) =
      _$CustomErrorImpl<Custom>;
  const _CustomError._() : super._();

  Custom get customError;
  @JsonKey(ignore: true)
  _$$CustomErrorImplCopyWith<Custom, _$CustomErrorImpl<Custom>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UndefinedErrorImplCopyWith<Custom, $Res> {
  factory _$$UndefinedErrorImplCopyWith(_$UndefinedErrorImpl<Custom> value,
          $Res Function(_$UndefinedErrorImpl<Custom>) then) =
      __$$UndefinedErrorImplCopyWithImpl<Custom, $Res>;
  @useResult
  $Res call({Object? errorObject});
}

/// @nodoc
class __$$UndefinedErrorImplCopyWithImpl<Custom, $Res>
    extends _$CommonResponseErrorCopyWithImpl<Custom, $Res,
        _$UndefinedErrorImpl<Custom>>
    implements _$$UndefinedErrorImplCopyWith<Custom, $Res> {
  __$$UndefinedErrorImplCopyWithImpl(_$UndefinedErrorImpl<Custom> _value,
      $Res Function(_$UndefinedErrorImpl<Custom>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorObject = freezed,
  }) {
    return _then(_$UndefinedErrorImpl<Custom>(
      freezed == errorObject ? _value.errorObject : errorObject,
    ));
  }
}

/// @nodoc

class _$UndefinedErrorImpl<Custom> extends _UndefinedError<Custom> {
  const _$UndefinedErrorImpl(this.errorObject) : super._();

  @override
  final Object? errorObject;

  @override
  String toString() {
    return 'CommonResponseError<$Custom>.undefinedError(errorObject: $errorObject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndefinedErrorImpl<Custom> &&
            const DeepCollectionEquality()
                .equals(other.errorObject, errorObject));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(errorObject));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UndefinedErrorImplCopyWith<Custom, _$UndefinedErrorImpl<Custom>>
      get copyWith => __$$UndefinedErrorImplCopyWithImpl<Custom,
          _$UndefinedErrorImpl<Custom>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noNetwork,
    required TResult Function() unAuthorized,
    required TResult Function() tooManyRequests,
    required TResult Function(Custom customError) customError,
    required TResult Function(Object? errorObject) undefinedError,
  }) {
    return undefinedError(errorObject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? noNetwork,
    TResult? Function()? unAuthorized,
    TResult? Function()? tooManyRequests,
    TResult? Function(Custom customError)? customError,
    TResult? Function(Object? errorObject)? undefinedError,
  }) {
    return undefinedError?.call(errorObject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noNetwork,
    TResult Function()? unAuthorized,
    TResult Function()? tooManyRequests,
    TResult Function(Custom customError)? customError,
    TResult Function(Object? errorObject)? undefinedError,
    required TResult orElse(),
  }) {
    if (undefinedError != null) {
      return undefinedError(errorObject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoNetwork<Custom> value) noNetwork,
    required TResult Function(_UnAuthorized<Custom> value) unAuthorized,
    required TResult Function(_TooManyRequests<Custom> value) tooManyRequests,
    required TResult Function(_CustomError<Custom> value) customError,
    required TResult Function(_UndefinedError<Custom> value) undefinedError,
  }) {
    return undefinedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoNetwork<Custom> value)? noNetwork,
    TResult? Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult? Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult? Function(_CustomError<Custom> value)? customError,
    TResult? Function(_UndefinedError<Custom> value)? undefinedError,
  }) {
    return undefinedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoNetwork<Custom> value)? noNetwork,
    TResult Function(_UnAuthorized<Custom> value)? unAuthorized,
    TResult Function(_TooManyRequests<Custom> value)? tooManyRequests,
    TResult Function(_CustomError<Custom> value)? customError,
    TResult Function(_UndefinedError<Custom> value)? undefinedError,
    required TResult orElse(),
  }) {
    if (undefinedError != null) {
      return undefinedError(this);
    }
    return orElse();
  }
}

abstract class _UndefinedError<Custom> extends CommonResponseError<Custom> {
  const factory _UndefinedError(final Object? errorObject) =
      _$UndefinedErrorImpl<Custom>;
  const _UndefinedError._() : super._();

  Object? get errorObject;
  @JsonKey(ignore: true)
  _$$UndefinedErrorImplCopyWith<Custom, _$UndefinedErrorImpl<Custom>>
      get copyWith => throw _privateConstructorUsedError;
}

DefaultApiError _$DefaultApiErrorFromJson(Map<String, dynamic> json) {
  return _DefaultApiError.fromJson(json);
}

/// @nodoc
mixin _$DefaultApiError {
  String get msg => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DefaultApiErrorCopyWith<DefaultApiError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultApiErrorCopyWith<$Res> {
  factory $DefaultApiErrorCopyWith(
          DefaultApiError value, $Res Function(DefaultApiError) then) =
      _$DefaultApiErrorCopyWithImpl<$Res, DefaultApiError>;
  @useResult
  $Res call({String msg, String code});
}

/// @nodoc
class _$DefaultApiErrorCopyWithImpl<$Res, $Val extends DefaultApiError>
    implements $DefaultApiErrorCopyWith<$Res> {
  _$DefaultApiErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultApiErrorImplCopyWith<$Res>
    implements $DefaultApiErrorCopyWith<$Res> {
  factory _$$DefaultApiErrorImplCopyWith(_$DefaultApiErrorImpl value,
          $Res Function(_$DefaultApiErrorImpl) then) =
      __$$DefaultApiErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg, String code});
}

/// @nodoc
class __$$DefaultApiErrorImplCopyWithImpl<$Res>
    extends _$DefaultApiErrorCopyWithImpl<$Res, _$DefaultApiErrorImpl>
    implements _$$DefaultApiErrorImplCopyWith<$Res> {
  __$$DefaultApiErrorImplCopyWithImpl(
      _$DefaultApiErrorImpl _value, $Res Function(_$DefaultApiErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
    Object? code = null,
  }) {
    return _then(_$DefaultApiErrorImpl(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultApiErrorImpl implements _DefaultApiError {
  const _$DefaultApiErrorImpl({required this.msg, required this.code});

  factory _$DefaultApiErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultApiErrorImplFromJson(json);

  @override
  final String msg;
  @override
  final String code;

  @override
  String toString() {
    return 'DefaultApiError(msg: $msg, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultApiErrorImpl &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, msg, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultApiErrorImplCopyWith<_$DefaultApiErrorImpl> get copyWith =>
      __$$DefaultApiErrorImplCopyWithImpl<_$DefaultApiErrorImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultApiErrorImplToJson(
      this,
    );
  }
}

abstract class _DefaultApiError implements DefaultApiError {
  const factory _DefaultApiError(
      {required final String msg,
      required final String code}) = _$DefaultApiErrorImpl;

  factory _DefaultApiError.fromJson(Map<String, dynamic> json) =
      _$DefaultApiErrorImpl.fromJson;

  @override
  String get msg;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$DefaultApiErrorImplCopyWith<_$DefaultApiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
