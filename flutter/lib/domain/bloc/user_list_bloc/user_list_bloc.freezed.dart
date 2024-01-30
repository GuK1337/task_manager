// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserListEvent {
  String? get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListEventCopyWith<UserListEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListEventCopyWith<$Res> {
  factory $UserListEventCopyWith(
          UserListEvent value, $Res Function(UserListEvent) then) =
      _$UserListEventCopyWithImpl<$Res, UserListEvent>;
  @useResult
  $Res call({String? query});
}

/// @nodoc
class _$UserListEventCopyWithImpl<$Res, $Val extends UserListEvent>
    implements $UserListEventCopyWith<$Res> {
  _$UserListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadDataImplCopyWith<$Res>
    implements $UserListEventCopyWith<$Res> {
  factory _$$LoadDataImplCopyWith(
          _$LoadDataImpl value, $Res Function(_$LoadDataImpl) then) =
      __$$LoadDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? query});
}

/// @nodoc
class __$$LoadDataImplCopyWithImpl<$Res>
    extends _$UserListEventCopyWithImpl<$Res, _$LoadDataImpl>
    implements _$$LoadDataImplCopyWith<$Res> {
  __$$LoadDataImplCopyWithImpl(
      _$LoadDataImpl _value, $Res Function(_$LoadDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$LoadDataImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LoadDataImpl implements _LoadData {
  const _$LoadDataImpl({this.query});

  @override
  final String? query;

  @override
  String toString() {
    return 'UserListEvent.loadData(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadDataImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      __$$LoadDataImplCopyWithImpl<_$LoadDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? query) loadData,
  }) {
    return loadData(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? query)? loadData,
  }) {
    return loadData?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? query)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadData value) loadData,
  }) {
    return loadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadData value)? loadData,
  }) {
    return loadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadData value)? loadData,
    required TResult orElse(),
  }) {
    if (loadData != null) {
      return loadData(this);
    }
    return orElse();
  }
}

abstract class _LoadData implements UserListEvent {
  const factory _LoadData({final String? query}) = _$LoadDataImpl;

  @override
  String? get query;
  @override
  @JsonKey(ignore: true)
  _$$LoadDataImplCopyWith<_$LoadDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListState {
  UserListStatus get status => throw _privateConstructorUsedError;
  List<ShortUserInfo>? get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListStateCopyWith<UserListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListStateCopyWith<$Res> {
  factory $UserListStateCopyWith(
          UserListState value, $Res Function(UserListState) then) =
      _$UserListStateCopyWithImpl<$Res, UserListState>;
  @useResult
  $Res call({UserListStatus status, List<ShortUserInfo>? users});
}

/// @nodoc
class _$UserListStateCopyWithImpl<$Res, $Val extends UserListState>
    implements $UserListStateCopyWith<$Res> {
  _$UserListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserListStatus,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ShortUserInfo>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserListStateImplCopyWith<$Res>
    implements $UserListStateCopyWith<$Res> {
  factory _$$UserListStateImplCopyWith(
          _$UserListStateImpl value, $Res Function(_$UserListStateImpl) then) =
      __$$UserListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserListStatus status, List<ShortUserInfo>? users});
}

/// @nodoc
class __$$UserListStateImplCopyWithImpl<$Res>
    extends _$UserListStateCopyWithImpl<$Res, _$UserListStateImpl>
    implements _$$UserListStateImplCopyWith<$Res> {
  __$$UserListStateImplCopyWithImpl(
      _$UserListStateImpl _value, $Res Function(_$UserListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = freezed,
  }) {
    return _then(_$UserListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserListStatus,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ShortUserInfo>?,
    ));
  }
}

/// @nodoc

class _$UserListStateImpl implements _UserListState {
  const _$UserListStateImpl(
      {this.status = UserListStatus.init, final List<ShortUserInfo>? users})
      : assert(status != UserListStatus.ready || users != null),
        _users = users;

  @override
  @JsonKey()
  final UserListStatus status;
  final List<ShortUserInfo>? _users;
  @override
  List<ShortUserInfo>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserListState(status: $status, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      __$$UserListStateImplCopyWithImpl<_$UserListStateImpl>(this, _$identity);
}

abstract class _UserListState implements UserListState {
  const factory _UserListState(
      {final UserListStatus status,
      final List<ShortUserInfo>? users}) = _$UserListStateImpl;

  @override
  UserListStatus get status;
  @override
  List<ShortUserInfo>? get users;
  @override
  @JsonKey(ignore: true)
  _$$UserListStateImplCopyWith<_$UserListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserListSr {
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ErrorSr value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorSr value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorSr value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserListSrCopyWith<UserListSr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListSrCopyWith<$Res> {
  factory $UserListSrCopyWith(
          UserListSr value, $Res Function(UserListSr) then) =
      _$UserListSrCopyWithImpl<$Res, UserListSr>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class _$UserListSrCopyWithImpl<$Res, $Val extends UserListSr>
    implements $UserListSrCopyWith<$Res> {
  _$UserListSrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorSrImplCopyWith<$Res>
    implements $UserListSrCopyWith<$Res> {
  factory _$$ErrorSrImplCopyWith(
          _$ErrorSrImpl value, $Res Function(_$ErrorSrImpl) then) =
      __$$ErrorSrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSrImplCopyWithImpl<$Res>
    extends _$UserListSrCopyWithImpl<$Res, _$ErrorSrImpl>
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

class _$ErrorSrImpl implements ErrorSr {
  const _$ErrorSrImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UserListSr.error(error: $error)';
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
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(ErrorSr value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ErrorSr value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ErrorSr value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorSr implements UserListSr {
  const factory ErrorSr(final String error) = _$ErrorSrImpl;

  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ErrorSrImplCopyWith<_$ErrorSrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
