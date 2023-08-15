import 'package:database/database.dart';
import 'package:drift/native.dart';

import 'models/task_model.dart';

class Repository {
  Repository() : _db = Database(NativeDatabase.memory());

  final Database _db;

  Future<int> addOrEditTask(TasksCompanion tasksCompanion) =>
      _db.createOrUpdateTask(tasksCompanion);
  Future<int> deleteTask(TasksCompanion tasksCompanion) =>
      _db.deleteTask(tasksCompanion);
  Future<List<TaskModel>> getAllTasks() async =>
      (await _db.readAllTasks).map(TaskModel.fromTaskDataClass).toList();
  Future<List<TaskModel>> getPendingTasks() async =>
      (await _db.readPendingTasks).map(TaskModel.fromTaskDataClass).toList();
  Future<List<TaskModel>> getCompletedTasks() async =>
      (await _db.readCompletedTasks).map(TaskModel.fromTaskDataClass).toList();
}
