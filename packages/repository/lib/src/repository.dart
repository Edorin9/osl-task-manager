import 'package:database/database.dart';
import 'package:drift/native.dart';

class WeatherRepository {
  WeatherRepository() : _db = Database(NativeDatabase.memory());

  final Database _db;

  Future<int> addOrEditTask(TasksCompanion tasksCompanion) =>
      _db.createOrUpdateTask(tasksCompanion);
  Future<int> deleteTask(TasksCompanion tasksCompanion) =>
      _db.deleteTask(tasksCompanion);
  Future<List<Task>> getAllTasks() => _db.readAllTasks;
  Future<List<Task>> getPendingTasks() => _db.readPendingTasks;
  Future<List<Task>> getCompletedTasks() => _db.readCompletedTasks;
}
