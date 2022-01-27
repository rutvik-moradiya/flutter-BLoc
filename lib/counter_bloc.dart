import 'package:bloc/bloc.dart';
import 'package:bloc_demo/counter_state.dart';

import 'counter_event.dart';


class CounterBloc extends Bloc<CounterEvent,CounterState>{
  CounterBloc(CounterState initialState) : super(initialState){

  }

  CounterState get initialState =>CounterState.intial();


  @override
  Stream<CounterState> mapEventToState(CounterEvent event,CounterState state)async*{
    if(event is IncrementEvent){
      yield currentState..counter +=1;
    }
    else if(event is DecrementEvent){
      yield currentState..counter -=1;
    }
  }
}