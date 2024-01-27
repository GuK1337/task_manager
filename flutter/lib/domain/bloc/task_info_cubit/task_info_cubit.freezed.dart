// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_info_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskInfoState {
  Task get task => throw _privateConstructorUsedError;
  TaskInfoStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskInfoStateCopyWith<TaskInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskInfoStateCopyWith<$Res> {
  factory $TaskInfoStateCopyWith(
          TaskInfoState value, $Res Function(TaskInfoState) then) =
      _$TaskInfoStateCopyWithImpl<$Res, TaskInfoState>;
  @useResult
  $Res call({Task task, TaskInfoStatus status});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$TaskInfoStateCopyWithImpl<$Res, $Val extends TaskInfoState>
    implements $TaskInfoStateCopyWith<$Res> {
  _$TaskInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskInfoStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskInfoStateImplCopyWith<$Res>
    implements $TaskInfoStateCopyWith<$Res> {
  factory _$$TaskInfoStateImplCopyWith(
          _$TaskInfoStateImpl value, $Res Function(_$TaskInfoStateImpl) then) =
      __$$TaskInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task task, TaskInfoStatus status});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$TaskInfoStateImplCopyWithImpl<$Res>
    extends _$TaskInfoStateCopyWithImpl<$Res, _$TaskInfoStateImpl>
    implements _$$TaskInfoStateImplCopyWith<$Res> {
  __$$TaskInfoStateImplCopyWithImpl(
      _$TaskInfoStateImpl _value, $Res Function(_$TaskInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? status = null,
  }) {
    return _then(_$TaskInfoStateImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskInfoStatus,
    ));
  }
}

/// @nodoc

class _$TaskInfoStateImpl implements _TaskInfoState {
  const _$TaskInfoStateImpl(
      {required this.task, this.status = TaskInfoStatus.ready});

  @override
  final Task task;
  @override
  @JsonKey()
  final TaskInfoStatus status;

  @override
  String toString() {
    return 'TaskInfoState(task: $task, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskInfoStateImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskInfoStateImplCopyWith<_$TaskInfoStateImpl> get copyWith =>
      __$$TaskInfoStateImplCopyWithImpl<_$TaskInfoStateImpl>(this, _$identity);
}

abstract class _TaskInfoState implements TaskInfoState {
  const factory _TaskInfoState(
      {required final Task task,
      final TaskInfoStatus status}) = _$TaskInfoStateImpl;

  @override
  Task get task;
  @override
  TaskInfoStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$TaskInfoStateImplCopyWith<_$TaskInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskInfoSr {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function() deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function()? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function()? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorSr value) error,
    required TResult Function(_SucessSr value) success,
    required TResult Function(_DeletedSr value) deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorSr value)? error,
    TResult? Function(_SucessSr value)? success,
    TResult? Function(_DeletedSr value)? deleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorSr value)? error,
    TResult Function(_SucessSr value)? success,
    TResult Function(_DeletedSr value)? deleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskInfoSrCopyWith<$Res> {
  factory $TaskInfoSrCopyWith(
          TaskInfoSr value, $Res Function(TaskInfoSr) then) =
      _$TaskInfoSrCopyWithImpl<$Res, TaskInfoSr>;
}

/// @nodoc
class _$TaskInfoSrCopyWithImpl<$Res, $Val extends TaskInfoSr>
    implements $TaskInfoSrCopyWith<$Res> {
  _$TaskInfoSrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ErrorSrImplCopyWith<$Res> {
  factory _$$ErrorSrImplCopyWith(
          _$ErrorSrImpl value, $Res Function(_$ErrorSrImpl) then) =
      __$$ErrorSrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSrImplCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$ErrorSrImpl>
    implements _$$ErrorSrImplCopyWith<$Res> {
  __$$ErrorSrImplCopyWithImpl(
      _$ErrorSrImpl _value, $Res Function(_$ErrorSrImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSrImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSrImpl implements _ErrorSr {
  const _$ErrorSrImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TaskInfoSr.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSrImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSrImplCopyWith<_$ErrorSrImpl> get copyWith =>
      __$$ErrorSrImplCopyWithImpl<_$ErrorSrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function() deleted,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function()? deleted,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function()? deleted,
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
    required TResult Function(_ErrorSr value) error,
    required TResult Function(_SucessSr value) success,
    required TResult Function(_DeletedSr value) deleted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorSr value)? error,
    TResult? Function(_SucessSr value)? success,
    TResult? Function(_DeletedSr value)? deleted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorSr value)? error,
    TResult Function(_SucessSr value)? success,
    TResult Function(_DeletedSr value)? deleted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSr implements TaskInfoSr {
  const factory _ErrorSr(final String error) = _$ErrorSrImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSrImplCopyWith<_$ErrorSrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucessSrImplCopyWith<$Res> {
  factory _$$SucessSrImplCopyWith(
          _$SucessSrImpl value, $Res Function(_$SucessSrImpl) then) =
      __$$SucessSrImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SucessSrImplCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$SucessSrImpl>
    implements _$$SucessSrImplCopyWith<$Res> {
  __$$SucessSrImplCopyWithImpl(
      _$SucessSrImpl _value, $Res Function(_$SucessSrImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SucessSrImpl implements _SucessSr {
  const _$SucessSrImpl();

  @override
  String toString() {
    return 'TaskInfoSr.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SucessSrImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function() deleted,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function()? deleted,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorSr value) error,
    required TResult Function(_SucessSr value) success,
    required TResult Function(_DeletedSr value) deleted,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorSr value)? error,
    TResult? Function(_SucessSr value)? success,
    TResult? Function(_DeletedSr value)? deleted,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorSr value)? error,
    TResult Function(_SucessSr value)? success,
    TResult Function(_DeletedSr value)? deleted,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SucessSr implements TaskInfoSr {
  const factory _SucessSr() = _$SucessSrImpl;
}

/// @nodoc
abstract class _$$DeletedSrImplCopyWith<$Res> {
  factory _$$DeletedSrImplCopyWith(
          _$DeletedSrImpl value, $Res Function(_$DeletedSrImpl) then) =
      __$$DeletedSrImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeletedSrImplCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$DeletedSrImpl>
    implements _$$DeletedSrImplCopyWith<$Res> {
  __$$DeletedSrImplCopyWithImpl(
      _$DeletedSrImpl _value, $Res Function(_$DeletedSrImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeletedSrImpl implements _DeletedSr {
  const _$DeletedSrImpl();

  @override
  String toString() {
    return 'TaskInfoSr.deleted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DeletedSrImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() success,
    required TResult Function() deleted,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? success,
    TResult? Function()? deleted,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? success,
    TResult Function()? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorSr value) error,
    required TResult Function(_SucessSr value) success,
    required TResult Function(_DeletedSr value) deleted,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorSr value)? error,
    TResult? Function(_SucessSr value)? success,
    TResult? Function(_DeletedSr value)? deleted,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorSr value)? error,
    TResult Function(_SucessSr value)? success,
    TResult Function(_DeletedSr value)? deleted,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _DeletedSr implements TaskInfoSr {
  const factory _DeletedSr() = _$DeletedSrImpl;
}
