// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? ready,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitState value) init,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashReadyState value) ready,
    required TResult Function(SplashErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitState value)? init,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashReadyState value)? ready,
    TResult? Function(SplashErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitState value)? init,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashReadyState value)? ready,
    TResult Function(SplashErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashInitStateImplCopyWith<$Res> {
  factory _$$SplashInitStateImplCopyWith(_$SplashInitStateImpl value,
          $Res Function(_$SplashInitStateImpl) then) =
      __$$SplashInitStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashInitStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashInitStateImpl>
    implements _$$SplashInitStateImplCopyWith<$Res> {
  __$$SplashInitStateImplCopyWithImpl(
      _$SplashInitStateImpl _value, $Res Function(_$SplashInitStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashInitStateImpl
    with DiagnosticableTreeMixin
    implements SplashInitState {
  const _$SplashInitStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.init()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SplashState.init'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashInitStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? ready,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitState value) init,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashReadyState value) ready,
    required TResult Function(SplashErrorState value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitState value)? init,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashReadyState value)? ready,
    TResult? Function(SplashErrorState value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitState value)? init,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashReadyState value)? ready,
    TResult Function(SplashErrorState value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SplashInitState implements SplashState {
  const factory SplashInitState() = _$SplashInitStateImpl;
}

/// @nodoc
abstract class _$$SplashLoadingStateImplCopyWith<$Res> {
  factory _$$SplashLoadingStateImplCopyWith(_$SplashLoadingStateImpl value,
          $Res Function(_$SplashLoadingStateImpl) then) =
      __$$SplashLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashLoadingStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashLoadingStateImpl>
    implements _$$SplashLoadingStateImplCopyWith<$Res> {
  __$$SplashLoadingStateImplCopyWithImpl(_$SplashLoadingStateImpl _value,
      $Res Function(_$SplashLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashLoadingStateImpl
    with DiagnosticableTreeMixin
    implements SplashLoadingState {
  const _$SplashLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SplashState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? ready,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitState value) init,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashReadyState value) ready,
    required TResult Function(SplashErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitState value)? init,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashReadyState value)? ready,
    TResult? Function(SplashErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitState value)? init,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashReadyState value)? ready,
    TResult Function(SplashErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SplashLoadingState implements SplashState {
  const factory SplashLoadingState() = _$SplashLoadingStateImpl;
}

/// @nodoc
abstract class _$$SplashReadyStateImplCopyWith<$Res> {
  factory _$$SplashReadyStateImplCopyWith(_$SplashReadyStateImpl value,
          $Res Function(_$SplashReadyStateImpl) then) =
      __$$SplashReadyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashReadyStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashReadyStateImpl>
    implements _$$SplashReadyStateImplCopyWith<$Res> {
  __$$SplashReadyStateImplCopyWithImpl(_$SplashReadyStateImpl _value,
      $Res Function(_$SplashReadyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashReadyStateImpl
    with DiagnosticableTreeMixin
    implements SplashReadyState {
  const _$SplashReadyStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.ready()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'SplashState.ready'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashReadyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function(String error) error,
  }) {
    return ready();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? ready,
    TResult? Function(String error)? error,
  }) {
    return ready?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInitState value) init,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashReadyState value) ready,
    required TResult Function(SplashErrorState value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitState value)? init,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashReadyState value)? ready,
    TResult? Function(SplashErrorState value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitState value)? init,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashReadyState value)? ready,
    TResult Function(SplashErrorState value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class SplashReadyState implements SplashState {
  const factory SplashReadyState() = _$SplashReadyStateImpl;
}

/// @nodoc
abstract class _$$SplashErrorStateImplCopyWith<$Res> {
  factory _$$SplashErrorStateImplCopyWith(_$SplashErrorStateImpl value,
          $Res Function(_$SplashErrorStateImpl) then) =
      __$$SplashErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SplashErrorStateImplCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashErrorStateImpl>
    implements _$$SplashErrorStateImplCopyWith<$Res> {
  __$$SplashErrorStateImplCopyWithImpl(_$SplashErrorStateImpl _value,
      $Res Function(_$SplashErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SplashErrorStateImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SplashErrorStateImpl
    with DiagnosticableTreeMixin
    implements SplashErrorState {
  const _$SplashErrorStateImpl(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SplashState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SplashState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SplashErrorStateImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SplashErrorStateImplCopyWith<_$SplashErrorStateImpl> get copyWith =>
      __$$SplashErrorStateImplCopyWithImpl<_$SplashErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function() ready,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function()? ready,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function()? ready,
    TResult Function(String error)? error,
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
    required TResult Function(SplashInitState value) init,
    required TResult Function(SplashLoadingState value) loading,
    required TResult Function(SplashReadyState value) ready,
    required TResult Function(SplashErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInitState value)? init,
    TResult? Function(SplashLoadingState value)? loading,
    TResult? Function(SplashReadyState value)? ready,
    TResult? Function(SplashErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInitState value)? init,
    TResult Function(SplashLoadingState value)? loading,
    TResult Function(SplashReadyState value)? ready,
    TResult Function(SplashErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SplashErrorState implements SplashState {
  const factory SplashErrorState(final String error) = _$SplashErrorStateImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$SplashErrorStateImplCopyWith<_$SplashErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
