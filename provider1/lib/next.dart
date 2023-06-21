import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/myCounter.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter result'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Consumer<MyCounter>(
              builder: (context, mycounter, child) {
                return Text('${mycounter.counter}');
              },
            ),
            Consumer<MyCounter>(builder: (context, mycounter, child) {
              return IconButton(
                icon: Icon(Icons.add),
                onPressed: () {
                  mycounter.inc();
                },
              );
            }),
          ],
        ),
      ),
    );
  }
}
