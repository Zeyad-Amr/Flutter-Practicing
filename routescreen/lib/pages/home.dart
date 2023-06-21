import 'package:flutter/material.dart';
import 'package:routescreen/pages/second.dart';

class Home extends StatelessWidget {
  static final route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MyButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () async {
        var result = await Navigator.pushNamed(context, Second.route);
        Scaffold.of(context).showSnackBar(
          SnackBar(
            content: Text('You selected $result'),
            duration: Duration(milliseconds: 100),
          ),
        );
      },
      child: Text('open second'),
    );
  }
}
