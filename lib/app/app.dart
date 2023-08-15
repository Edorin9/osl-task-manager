import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

import '../features/tasks/view/tasks_page.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => Repository(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TasksPage.name,
        routes: routes,
      ),
    );
  }
}
