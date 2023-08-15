// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailsState _$$_DetailsStateFromJson(Map<String, dynamic> json) =>
    _$_DetailsState(
      mode: $enumDecodeNullable(_$DetailsModeEnumMap, json['mode']) ??
          DetailsMode.display,
      task: json['task'] == null
          ? null
          : Task.fromJson(json['task'] as Map<String, dynamic>),
      titleField: json['titleField'] as String? ?? '',
      descriptionField: json['descriptionField'] as String? ?? '',
      dueDateField: json['dueDateField'] == null
          ? null
          : DateTime.parse(json['dueDateField'] as String),
      messageStatus:
          $enumDecodeNullable(_$MessageStatusEnumMap, json['messageStatus']) ??
              MessageStatus.none,
      message: json['message'] as String? ?? null,
    );

Map<String, dynamic> _$$_DetailsStateToJson(_$_DetailsState instance) =>
    <String, dynamic>{
      'mode': _$DetailsModeEnumMap[instance.mode]!,
      'task': instance.task,
      'titleField': instance.titleField,
      'descriptionField': instance.descriptionField,
      'dueDateField': instance.dueDateField?.toIso8601String(),
      'messageStatus': _$MessageStatusEnumMap[instance.messageStatus]!,
      'message': instance.message,
    };

const _$DetailsModeEnumMap = {
  DetailsMode.display: 'display',
  DetailsMode.create: 'create',
  DetailsMode.edit: 'edit',
};

const _$MessageStatusEnumMap = {
  MessageStatus.none: 'none',
  MessageStatus.success: 'success',
  MessageStatus.failure: 'failure',
};
