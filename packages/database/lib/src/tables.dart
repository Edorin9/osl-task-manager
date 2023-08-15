import 'package:drift/drift.dart';

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
  Database(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 2;
}
