// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int,
      creator: json['creator'] as int,
      executor: json['executor'] as int?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String,
      description: json['description'] as String?,
      status: $enumDecode(_$TaskStatusEnumMap, json['status']),
      image: json['image'] as String?,
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$TaskActionsEnumMap, e))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'creator': instance.creator,
      'executor': instance.executor,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'status': _$TaskStatusEnumMap[instance.status]!,
      'image': instance.image,
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
