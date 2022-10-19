import 'package:bloc/bloc.dart';

// enum CounterEvent { increment, decrement, reset }

abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class Reset extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Increment>((event, emit) => emit(state + 1));
    on<Decrement>((event, emit) => emit(state - 1));
    on<Reset>((event, emit) => emit(state - state));
  }

  // @override
  // int get initialState => 0;

  // @override
  // Stream<int>? mapEventToState(CounterEvent event) async* {
  //   switch (event) {
  //     case CounterEvent.increment:
  //       yield state + 1;
  //       break;
  //     case CounterEvent.decrement:
  //       yield state - 1;
  //       break;
  //     case CounterEvent.reset:
  //       yield state - state;
  //       break;
  //   }
  // }
}
