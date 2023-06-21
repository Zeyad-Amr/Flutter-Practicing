import 'package:flutter/material.dart';
import 'package:push/pages/screen2.dart';

class Screen1 extends StatelessWidget {
  static final route = '/screen1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Opens Screen 2'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (c) => Screen2()),
              ),
              /*   onPressed: () => Navigator.of(context).pushNamed(Screen2.route), */
            ),
            RaisedButton(
              child: Text('Opens Screen 2'),
              onPressed: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
