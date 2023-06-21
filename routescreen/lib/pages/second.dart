import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  static final route = '/second';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop('Yes');
              },
              child: Text('Yes'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop('No');
              },
              child: Text('No'),
            ),
          ],
        ),
      ),
    );
  }
}
