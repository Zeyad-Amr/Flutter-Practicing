import 'package:color/Home.dart';
import 'package:color/choice.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.black,
        buttonColor: Colors.green,
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          headline: TextStyle(
            fontSize: 50,
            color: Colors.blue[900],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
/* 
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Show SnackBar'),
      onPressed: () {
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('Hello SnackBar'),
          ),
        );
      },
    );
  }
}
 */
