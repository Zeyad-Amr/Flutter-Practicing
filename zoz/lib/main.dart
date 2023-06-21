import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  var p = MyApp();
  runApp(p);
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                'Flutter Project',
                style: TextStyle(
                  color: Colors.redAccent,
                ),
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              Text(
                'Result is $counter',
                style: TextStyle(fontSize: 22),
              ),
              RaisedButton(
                child: Text('Click Me Please'),
                onPressed: () {
                  //call build
                  setState(
                    () {
                      counter++;
                    },
                  );
                },
              ),
            ],
          )),
    );
  }
}
