import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_flutter_test_case/constants/variable.dart';
import 'package:youtube_flutter_test_case/presentation/screens/add_todo_screen.dart';
import 'package:youtube_flutter_test_case/presentation/screens/edit_todo_screen.dart';
import 'package:youtube_flutter_test_case/presentation/screens/page_404.dart';
import 'package:youtube_flutter_test_case/presentation/screens/todos_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => TodoScreen());
      case EDIT_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => EditTodoScreen());
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(builder: (_) => AddTodoScreen());
      default:
        return MaterialPageRoute(builder: (_) => page404());
    }
  }
}
