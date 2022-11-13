part of 'todos_bloc.dart';

abstract class TodosState extends Equatable {
  const TodosState();

  @override
  List<Object> get props => [];
}

class TodosInitial extends TodosState {}

class TodoLoadedState extends TodosState {
  late final List<Task> tasks;

  TodoLoadedState(this.tasks);
  @override
  List<Object> get props => [tasks];
}
