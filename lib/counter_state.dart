class CounterState{
  int? counter;
    CounterState._();

    factory CounterState.intial(){
      return CounterState._()..counter = 0;
    }
}