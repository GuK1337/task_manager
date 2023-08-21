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
abstract class _$$_TaskInfoStateCopyWith<$Res>
    implements $TaskInfoStateCopyWith<$Res> {
  factory _$$_TaskInfoStateCopyWith(
          _$_TaskInfoState value, $Res Function(_$_TaskInfoState) then) =
      __$$_TaskInfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task task, TaskInfoStatus status});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$_TaskInfoStateCopyWithImpl<$Res>
    extends _$TaskInfoStateCopyWithImpl<$Res, _$_TaskInfoState>
    implements _$$_TaskInfoStateCopyWith<$Res> {
  __$$_TaskInfoStateCopyWithImpl(
      _$_TaskInfoState _value, $Res Function(_$_TaskInfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? status = null,
  }) {
    return _then(_$_TaskInfoState(
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

class _$_TaskInfoState implements _TaskInfoState {
  const _$_TaskInfoState(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskInfoState &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskInfoStateCopyWith<_$_TaskInfoState> get copyWith =>
      __$$_TaskInfoStateCopyWithImpl<_$_TaskInfoState>(this, _$identity);
}

abstract class _TaskInfoState implements TaskInfoState {
  const factory _TaskInfoState(
      {required final Task task,
      final TaskInfoStatus status}) = _$_TaskInfoState;

  @override
  Task get task;
  @override
  TaskInfoStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_TaskInfoStateCopyWith<_$_TaskInfoState> get copyWith =>
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
abstract class _$$_ErrorSrCopyWith<$Res> {
  factory _$$_ErrorSrCopyWith(
          _$_ErrorSr value, $Res Function(_$_ErrorSr) then) =
      __$$_ErrorSrCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ErrorSrCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$_ErrorSr>
    implements _$$_ErrorSrCopyWith<$Res> {
  __$$_ErrorSrCopyWithImpl(_$_ErrorSr _value, $Res Function(_$_ErrorSr) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ErrorSr(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorSr implements _ErrorSr {
  const _$_ErrorSr(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'TaskInfoSr.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorSr &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorSrCopyWith<_$_ErrorSr> get copyWith =>
      __$$_ErrorSrCopyWithImpl<_$_ErrorSr>(this, _$identity);

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
  const factory _ErrorSr(final String error) = _$_ErrorSr;

  String get error;
  @JsonKey(ignore: true)
  _$$_ErrorSrCopyWith<_$_ErrorSr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SucessSrCopyWith<$Res> {
  factory _$$_SucessSrCopyWith(
          _$_SucessSr value, $Res Function(_$_SucessSr) then) =
      __$$_SucessSrCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SucessSrCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$_SucessSr>
    implements _$$_SucessSrCopyWith<$Res> {
  __$$_SucessSrCopyWithImpl(
      _$_SucessSr _value, $Res Function(_$_SucessSr) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SucessSr implements _SucessSr {
  const _$_SucessSr();

  @override
  String toString() {
    return 'TaskInfoSr.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SucessSr);
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
  const factory _SucessSr() = _$_SucessSr;
}

/// @nodoc
abstract class _$$_DeletedSrCopyWith<$Res> {
  factory _$$_DeletedSrCopyWith(
          _$_DeletedSr value, $Res Function(_$_DeletedSr) then) =
      __$$_DeletedSrCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeletedSrCopyWithImpl<$Res>
    extends _$TaskInfoSrCopyWithImpl<$Res, _$_DeletedSr>
    implements _$$_DeletedSrCopyWith<$Res> {
  __$$_DeletedSrCopyWithImpl(
      _$_DeletedSr _value, $Res Function(_$_DeletedSr) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DeletedSr implements _DeletedSr {
  const _$_DeletedSr();

  @override
  String toString() {
    return 'TaskInfoSr.deleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DeletedSr);
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
  const factory _DeletedSr() = _$_DeletedSr;
}
