import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  int counter = 0;
  Widget child;
  CounterProvider({this.child});

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return oldWidget.counter != counter;
  }

  CounterProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType();
}
