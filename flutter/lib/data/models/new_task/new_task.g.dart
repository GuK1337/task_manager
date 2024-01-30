// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewTaskImpl _$$NewTaskImplFromJson(Map<String, dynamic> json) =>
    _$NewTaskImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      imagePaths: (json['imagePaths'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      executor: json['executor'] == null
          ? null
          : ShortUserInfo.fromJson(json['executor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewTaskImplToJson(_$NewTaskImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'imagePaths': instance.imagePaths,
      'executor': instance.executor?.toJson(),
    };
