import 'package:flutter/widgets.dart';

import '../features/details/view/details_page.dart';
import '../features/tasks/view/tasks_page.dart';

final routes = <String, WidgetBuilder>{
  TasksPage.name: TasksPage.route(),
  DetailsPage.name: DetailsPage.route(),
};
