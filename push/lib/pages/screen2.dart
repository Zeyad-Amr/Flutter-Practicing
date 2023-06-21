import 'package:flutter/material.dart';
import 'package:push/pages/screen3.dart';

class Screen2 extends StatelessWidget {
  static final route = '/screen2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Opens Screen 3'),
              onPressed: () => Navigator.of(context).pushNamed(Screen3.route),
            ),
            RaisedButton(
              child: Text('Opens Screen 3'),
              onPressed: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
