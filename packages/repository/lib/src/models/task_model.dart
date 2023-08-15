import 'package:database/database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums/status.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const factory TaskModel({
    required int? id,
    required String title,
    required String description,
    required Status status,
    required DateTime dateCreated,
    required DateTime dueDate,
  }) = _TaskModel;

  const TaskModel._();

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  factory TaskModel.fromTaskDataClass(Task task) => TaskModel(
        id: task.id,
        title: task.title,
        description: task.description,
        status: task.status.statusType,
        dateCreated: task.dateCreated,
        dueDate: task.dueDate,
      );

  TasksCompanion toTasksCompanion() => TasksCompanion(
        id: id != null ? drift.Value(id!) : const drift.Value.absent(),
        title: drift.Value(title),
        description: drift.Value(description),
        status: drift.Value(status.id),
        dateCreated: drift.Value(dateCreated),
        dueDate: drift.Value(dueDate),
      );
}
