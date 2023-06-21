import 'package:flutter/material.dart';
import 'package:route/routes/home.dart';
import 'package:route/routes/third.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Second Screen',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Second Screen',
              style: Theme.of(context).textTheme.headline,
            ),
            RaisedButton(
              onPressed: () {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                ); */

                Navigator.pushNamed(context, '/');
              },
              child: Text('Open Home'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('Open third'),
            ),
          ],
        ),
      ),
    );
  }
}
