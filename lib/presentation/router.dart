import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:youtube_flutter_test_case/constants/strings.dart';
import 'package:youtube_flutter_test_case/cubit/add_todo_cubit.dart';
import 'package:youtube_flutter_test_case/cubit/edit_todo_cubit.dart';
import 'package:youtube_flutter_test_case/cubit/todos_cubit.dart';
import 'package:youtube_flutter_test_case/data/models/todo.dart';
import 'package:youtube_flutter_test_case/data/network_service.dart';
import 'package:youtube_flutter_test_case/data/repository.dart';
import 'package:youtube_flutter_test_case/presentation/screens/add_todo_screen.dart';
import 'package:youtube_flutter_test_case/presentation/screens/edit_todo_screen.dart';
import 'package:youtube_flutter_test_case/presentation/screens/page_404.dart';
import 'package:youtube_flutter_test_case/presentation/screens/todos_screen.dart';

class AppRouter {
  late Repository repository;
  late TodosCubit todosCubit;

  AppRouter() {
    repository = Repository(networkService: NetworkService());
    todosCubit = TodosCubit(repository: repository);
  }

  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: todosCubit,
            child: TodosScreen(),
          ),
        );
      case EDIT_TODO_ROUTE:
        final todo = settings.arguments as Todo;
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => EditTodoCubit(
              repository: repository,
              todosCubit: todosCubit,
            ),
            child: EditTodoScreen(
              todo: todo,
            ),
          ),
        );
      case ADD_TODO_ROUTE:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => AddTodoCubit(
              repository: repository,
              todosCubit: todosCubit,
            ),
            child: AddTodoScreen(),
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => page404());
    }
  }
}
