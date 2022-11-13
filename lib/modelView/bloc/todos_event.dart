part of 'todos_bloc.dart';

abstract class TodosEvent extends Equatable {
  const TodosEvent();

  @override
  List<Object> get props => [];
}

class LoadTodoEvent extends TodosEvent {
  final String username;

  LoadTodoEvent(this.username);
  @override
  List<Object> get props => [username];
}
