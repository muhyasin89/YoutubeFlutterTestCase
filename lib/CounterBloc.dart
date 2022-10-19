import 'package:bloc/bloc.dart';

enum CounterEvent { increment, decrement, reset }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState);

  // @override
  // int get initialState => 0;

  @override
  Stream<int>? mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.reset:
        yield state - state;
        break;
    }
  }
}
