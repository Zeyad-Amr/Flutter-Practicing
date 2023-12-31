import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/myCounter.dart';
import 'package:provider1/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCounter>(
        create: (context) => MyCounter(),
        child: MaterialApp(
          home: Home(),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Consumer<MyCounter>(builder: (context, mycounter, child) {
          return Text('${mycounter.counter}');
        }),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Second(),
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return Text('${mycounter.counter}');
            }),
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  mycounter.inc();
                },
              );
            }),
            Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return Text('${mycounter.counter}');
              },
            ),
          ],
        ),
      ),
    );
  }
}
