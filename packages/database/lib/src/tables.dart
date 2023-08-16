import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'tables.g.dart';

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  IntColumn get status => integer().withDefault(const Constant(0))();
  DateTimeColumn get dateCreated => dateTime()();
  DateTimeColumn get dueDate => dateTime()();
}

abstract class TasksView extends View {
  Tasks get tasks;

  @override
  Query as() => select([tasks.title]).from(tasks);
}

@DriftDatabase(
  tables: [Tasks],
  views: [TasksView],
)
class Database extends _$Database {
  Database(QueryExecutor e) : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();

        await batch((b) {
          b.insertAll(tasks, [
            TasksCompanion.insert(
              title: 'Write database models',
              description:
                  'Make the models directory under src and write models in their own separate file.',
              dateCreated: DateTime.now(),
              dueDate: DateTime.now().add(Duration(days: 3)),
            ),
            TasksCompanion.insert(
              title: 'Test BLoCs in Authentication module',
              description: '- Login BLoC\n- Register BLoC\n- GoogleSignIn BLoC',
              dateCreated: DateTime.now(),
              dueDate: DateTime.now().add(Duration(days: 8)),
            ),
            TasksCompanion.insert(
              title: 'Create a new branch for the scheduling feature',
              description: 'Write calendar sub-tasks for this epic.',
              dateCreated: DateTime.now(),
              dueDate: DateTime.now().add(Duration(days: 8)),
            ),
          ]);
        });
      },
    );
  }

  Future<int> createOrUpdateTask(TasksCompanion entry) =>
      into(tasks).insertOnConflictUpdate(entry);
  Future<int> deleteTask(TasksCompanion task) =>
      (delete(tasks)..where((t) => t.id.equals(task.id.value))).go();
  Future<List<Task>> get readAllTasks => select(tasks).get();
  Future<List<Task>> get readPendingTasks =>
      (select(tasks)..where((t) => t.status.equals(0))).get();
  Future<List<Task>> get readCompletedTasks =>
      (select(tasks)..where((t) => t.status.equals(1))).get();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
