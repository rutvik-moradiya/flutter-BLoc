import 'package:bloc/bloc.dart';

abstract class CounterEvent{
}

class IncrementEvent extends CounterEvent{

}
class DecrementEvent extends CounterEvent{}