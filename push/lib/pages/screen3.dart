import 'package:flutter/material.dart';
import 'package:push/pages/home.dart';
import 'package:push/pages/screen1.dart';
import 'package:push/pages/screen2.dart';

class Screen3 extends StatelessWidget {
  static final route = '/screen3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text('Opens Screen 2'),
                onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                      Screen3.route,
                      ModalRoute.withName(Screen1.route),
                    )),
            RaisedButton(
              child: Text('Opens Screen 2'),
              onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (c) => Screen2()),
                  (route) => false),
            ),
          ],
        ),
      ),
    );
  }
}
