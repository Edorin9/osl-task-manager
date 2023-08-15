import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:repository/repository.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  const factory Task({
    required String title,
    required String description,
    required Status status,
    required DateTime dateCreated,
    required DateTime dueDate,
  }) = _Task;

  const Task._();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  factory Task.fromModel(TaskModel model) => Task(
        title: model.title,
        description: model.description,
        status: model.status,
        dateCreated: model.dateCreated,
        dueDate: model.dueDate,
      );
}
