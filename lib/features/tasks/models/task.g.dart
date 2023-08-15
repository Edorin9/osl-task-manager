// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      title: json['title'] as String,
      description: json['description'] as String,
      status: $enumDecode(_$StatusEnumMap, json['status']),
      dateCreated: DateTime.parse(json['dateCreated'] as String),
      dueDate: DateTime.parse(json['dueDate'] as String),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'status': _$StatusEnumMap[instance.status]!,
      'dateCreated': instance.dateCreated.toIso8601String(),
      'dueDate': instance.dueDate.toIso8601String(),
    };

const _$StatusEnumMap = {
  Status.pending: 'pending',
  Status.completed: 'completed',
};
