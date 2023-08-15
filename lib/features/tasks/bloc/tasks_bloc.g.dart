// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tasks_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TasksState _$$_TasksStateFromJson(Map<String, dynamic> json) =>
    _$_TasksState(
      tasks: (json['tasks'] as List<dynamic>?)
              ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      statusFilter:
          $enumDecodeNullable(_$StatusFilterEnumMap, json['statusFilter']) ??
              StatusFilter.all,
    );

Map<String, dynamic> _$$_TasksStateToJson(_$_TasksState instance) =>
    <String, dynamic>{
      'tasks': instance.tasks,
      'statusFilter': _$StatusFilterEnumMap[instance.statusFilter]!,
    };

const _$StatusFilterEnumMap = {
  StatusFilter.all: 'all',
  StatusFilter.pending: 'pending',
  StatusFilter.completed: 'completed',
};
