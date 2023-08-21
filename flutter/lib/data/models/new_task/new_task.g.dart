// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewTask _$$_NewTaskFromJson(Map<String, dynamic> json) => _$_NewTask(
      title: json['title'] as String,
      description: json['description'] as String?,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$_NewTaskToJson(_$_NewTask instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imagePath': instance.imagePath,
    };
