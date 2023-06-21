import 'package:flutter/material.dart';
import 'package:inheritedwidget/counter_provider.dart';
import 'package:inheritedwidget/home.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
