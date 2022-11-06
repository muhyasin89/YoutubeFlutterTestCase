part of 'todos_cubit.dart';

@immutable
abstract class TodosState {}

class TodosInitial extends TodosState {}

class TodoLoaded extends TodosState {
  final List<Todo> todos;

  TodoLoaded({required this.todos});
}
