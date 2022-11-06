import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:youtube_flutter_test_case/data/models/todo.dart';
import 'package:youtube_flutter_test_case/data/repository.dart';

part 'todos_state.dart';

class TodosCubit extends Cubit<TodosState> {
  final Repository repository;

  TodosCubit({required this.repository}) : super(TodosInitial());

  void fetchTodos() {
    // Timer(Duration(seconds: 3), () {
    repository.fetchTodos().then((todos) {
      emit(TodoLoaded(todos: todos));
    });
    // });
  }
}
