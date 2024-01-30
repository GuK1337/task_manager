// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  TaskUser get creator => throw _privateConstructorUsedError;
  TaskUser? get executor => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  TaskStatus get status => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;
  Set<TaskActions> get actions => throw _privateConstructorUsedError;
  TaskResult? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {int id,
      TaskUser creator,
      TaskUser? executor,
      DateTime createdAt,
      DateTime updatedAt,
      String title,
      String? description,
      TaskStatus status,
      List<String>? images,
      Set<TaskActions> actions,
      TaskResult? result});

  $TaskUserCopyWith<$Res> get creator;
  $TaskUserCopyWith<$Res>? get executor;
  $TaskResultCopyWith<$Res>? get result;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? executor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? images = freezed,
    Object? actions = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as TaskUser,
      executor: freezed == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as TaskUser?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Set<TaskActions>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TaskResult?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskUserCopyWith<$Res> get creator {
    return $TaskUserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskUserCopyWith<$Res>? get executor {
    if (_value.executor == null) {
      return null;
    }

    return $TaskUserCopyWith<$Res>(_value.executor!, (value) {
      return _then(_value.copyWith(executor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $TaskResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      TaskUser creator,
      TaskUser? executor,
      DateTime createdAt,
      DateTime updatedAt,
      String title,
      String? description,
      TaskStatus status,
      List<String>? images,
      Set<TaskActions> actions,
      TaskResult? result});

  @override
  $TaskUserCopyWith<$Res> get creator;
  @override
  $TaskUserCopyWith<$Res>? get executor;
  @override
  $TaskResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creator = null,
    Object? executor = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = null,
    Object? images = freezed,
    Object? actions = null,
    Object? result = freezed,
  }) {
    return _then(_$TaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as TaskUser,
      executor: freezed == executor
          ? _value.executor
          : executor // ignore: cast_nullable_to_non_nullable
              as TaskUser?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      actions: null == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Set<TaskActions>,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as TaskResult?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskImpl with DiagnosticableTreeMixin implements _Task {
  const _$TaskImpl(
      {required this.id,
      required this.creator,
      this.executor,
      required this.createdAt,
      required this.updatedAt,
      required this.title,
      this.description,
      required this.status,
      final List<String>? images,
      final Set<TaskActions> actions = const {},
      this.result})
      : _images = images,
        _actions = actions;

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final int id;
  @override
  final TaskUser creator;
  @override
  final TaskUser? executor;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String title;
  @override
  final String? description;
  @override
  final TaskStatus status;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Set<TaskActions> _actions;
  @override
  @JsonKey()
  Set<TaskActions> get actions {
    if (_actions is EqualUnmodifiableSetView) return _actions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_actions);
  }

  @override
  final TaskResult? result;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Task(id: $id, creator: $creator, executor: $executor, createdAt: $createdAt, updatedAt: $updatedAt, title: $title, description: $description, status: $status, images: $images, actions: $actions, result: $result)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Task'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('executor', executor))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('actions', actions))
      ..add(DiagnosticsProperty('result', result));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.executor, executor) ||
                other.executor == executor) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      creator,
      executor,
      createdAt,
      updatedAt,
      title,
      description,
      status,
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(_actions),
      result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskImplToJson(
      this,
    );
  }
}

abstract class _Task implements Task {
  const factory _Task(
      {required final int id,
      required final TaskUser creator,
      final TaskUser? executor,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String title,
      final String? description,
      required final TaskStatus status,
      final List<String>? images,
      final Set<TaskActions> actions,
      final TaskResult? result}) = _$TaskImpl;

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  int get id;
  @override
  TaskUser get creator;
  @override
  TaskUser? get executor;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get title;
  @override
  String? get description;
  @override
  TaskStatus get status;
  @override
  List<String>? get images;
  @override
  Set<TaskActions> get actions;
  @override
  TaskResult? get result;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskResult _$TaskResultFromJson(Map<String, dynamic> json) {
  return _TaskResult.fromJson(json);
}

/// @nodoc
mixin _$TaskResult {
  int get id => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskResultCopyWith<TaskResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResultCopyWith<$Res> {
  factory $TaskResultCopyWith(
          TaskResult value, $Res Function(TaskResult) then) =
      _$TaskResultCopyWithImpl<$Res, TaskResult>;
  @useResult
  $Res call({int id, String? description, List<String>? images});
}

/// @nodoc
class _$TaskResultCopyWithImpl<$Res, $Val extends TaskResult>
    implements $TaskResultCopyWith<$Res> {
  _$TaskResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskResultImplCopyWith<$Res>
    implements $TaskResultCopyWith<$Res> {
  factory _$$TaskResultImplCopyWith(
          _$TaskResultImpl value, $Res Function(_$TaskResultImpl) then) =
      __$$TaskResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? description, List<String>? images});
}

/// @nodoc
class __$$TaskResultImplCopyWithImpl<$Res>
    extends _$TaskResultCopyWithImpl<$Res, _$TaskResultImpl>
    implements _$$TaskResultImplCopyWith<$Res> {
  __$$TaskResultImplCopyWithImpl(
      _$TaskResultImpl _value, $Res Function(_$TaskResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = freezed,
    Object? images = freezed,
  }) {
    return _then(_$TaskResultImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskResultImpl with DiagnosticableTreeMixin implements _TaskResult {
  const _$TaskResultImpl(
      {required this.id, this.description, final List<String>? images})
      : _images = images;

  factory _$TaskResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskResultImplFromJson(json);

  @override
  final int id;
  @override
  final String? description;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskResult(id: $id, description: $description, images: $images)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskResult'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('images', images));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskResultImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, description,
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskResultImplCopyWith<_$TaskResultImpl> get copyWith =>
      __$$TaskResultImplCopyWithImpl<_$TaskResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskResultImplToJson(
      this,
    );
  }
}

abstract class _TaskResult implements TaskResult {
  const factory _TaskResult(
      {required final int id,
      final String? description,
      final List<String>? images}) = _$TaskResultImpl;

  factory _TaskResult.fromJson(Map<String, dynamic> json) =
      _$TaskResultImpl.fromJson;

  @override
  int get id;
  @override
  String? get description;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$TaskResultImplCopyWith<_$TaskResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskUser _$TaskUserFromJson(Map<String, dynamic> json) {
  return _TaskUser.fromJson(json);
}

/// @nodoc
mixin _$TaskUser {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskUserCopyWith<TaskUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskUserCopyWith<$Res> {
  factory $TaskUserCopyWith(TaskUser value, $Res Function(TaskUser) then) =
      _$TaskUserCopyWithImpl<$Res, TaskUser>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class _$TaskUserCopyWithImpl<$Res, $Val extends TaskUser>
    implements $TaskUserCopyWith<$Res> {
  _$TaskUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskUserImplCopyWith<$Res>
    implements $TaskUserCopyWith<$Res> {
  factory _$$TaskUserImplCopyWith(
          _$TaskUserImpl value, $Res Function(_$TaskUserImpl) then) =
      __$$TaskUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$TaskUserImplCopyWithImpl<$Res>
    extends _$TaskUserCopyWithImpl<$Res, _$TaskUserImpl>
    implements _$$TaskUserImplCopyWith<$Res> {
  __$$TaskUserImplCopyWithImpl(
      _$TaskUserImpl _value, $Res Function(_$TaskUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$TaskUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskUserImpl with DiagnosticableTreeMixin implements _TaskUser {
  const _$TaskUserImpl({required this.id, required this.username});

  factory _$TaskUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskUserImplFromJson(json);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskUser(id: $id, username: $username)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskUser'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskUserImplCopyWith<_$TaskUserImpl> get copyWith =>
      __$$TaskUserImplCopyWithImpl<_$TaskUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskUserImplToJson(
      this,
    );
  }
}

abstract class _TaskUser implements TaskUser {
  const factory _TaskUser(
      {required final int id, required final String username}) = _$TaskUserImpl;

  factory _TaskUser.fromJson(Map<String, dynamic> json) =
      _$TaskUserImpl.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$TaskUserImplCopyWith<_$TaskUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
