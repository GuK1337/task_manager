// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewTaskImpl _$$NewTaskImplFromJson(Map<String, dynamic> json) =>
    _$NewTaskImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$NewTaskImplToJson(_$NewTaskImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imagePath': instance.imagePath,
    };
