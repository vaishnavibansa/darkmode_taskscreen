import 'package:flutter_bloc/flutter_bloc.dart';

import '../Model/counter_model.dart';

class CounterBloc extends Bloc<CounterEvent, CounterModel> {
  CounterBloc() : super(CounterModel());

  @override
  Stream<CounterModel> mapEventToState(CounterEvent event) async* {
    if (event is IncrementEvent) {
      yield CounterModel(counter: state.counter + 1);
    } else if (event is DecrementEvent) {
      yield CounterModel(counter: state.counter - 1);
    }
  }
}

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class DecrementEvent extends CounterEvent {}
