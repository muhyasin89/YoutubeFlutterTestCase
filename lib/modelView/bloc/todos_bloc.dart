import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:youtube_flutter_test_case/model/task.dart';
import 'package:youtube_flutter_test_case/services/todo.dart';

part 'todos_event.dart';
part 'todos_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  final TodoService _todoService;
  TodosBloc(this._todoService) : super(TodosInitial()) {
    on<LoadTodoEvent>((event, emit) {
      // TODO: implement event handler
      final todos = _todoService.getTasks(event.username);
      emit(TodoLoadedState(todos));
    });
  }
}
