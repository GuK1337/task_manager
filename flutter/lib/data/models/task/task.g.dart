// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as int,
      creator: TaskUser.fromJson(json['creator'] as Map<String, dynamic>),
      executor: json['executor'] == null
          ? null
          : TaskUser.fromJson(json['executor'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TaskActionsEnumMap, e))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator.toJson(),
      'executor': instance.executor?.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'images': instance.images,
      'actions': instance.actions.map((e) => _$TaskActionsEnumMap[e]!).toList(),
    };

const _$TaskStatusEnumMap = {
  TaskStatus.newTask: 'new',
  TaskStatus.inProgress: 'inProgress',
  TaskStatus.completed: 'completed',
};

const _$TaskActionsEnumMap = {
  TaskActions.delete: 'delete',
  TaskActions.accept: 'accept',
  TaskActions.confirm: 'confirm',
  TaskActions.cancel: 'cancel',
};

_$TaskUserImpl _$$TaskUserImplFromJson(Map<String, dynamic> json) =>
    _$TaskUserImpl(
      id: json['id'] as int,
      username: json['username'] as String,
    );

Map<String, dynamic> _$$TaskUserImplToJson(_$TaskUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };
