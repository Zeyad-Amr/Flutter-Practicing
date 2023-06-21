import 'package:bloc/bloc.dart';
import 'package:blocpattern/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.add:
        yield state + 1;
        break;
      case CounterEvent.remove:
        yield state - 1;
        break;
    }
/* 
    if (event == CounterEvent.add) {
      yield state + 1;
    } eslse {
      yield state - 1;
    } */
  }

  /* @override
  void onTransition(Transition<CounterEvent, int> transition) {
    super.onTransition(transition);
    /*  print(transition); */
  } */
/* 
  @override
  void onEvent(CounterEvent event) {
    super.onEvent(event);
    /* print(event); */
  } */
}
