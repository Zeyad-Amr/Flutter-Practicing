import 'package:flutter/material.dart';
import 'package:push/pages/screen1.dart';

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
            RaisedButton(
              child: Text('Opens Screen 1'),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (c) => Screen1(),
                ),
              ),
            ),
            RaisedButton(
              child: Text('back'),
              onPressed: () {
                if (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                } else {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(content: Text("Can't be poped")),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
