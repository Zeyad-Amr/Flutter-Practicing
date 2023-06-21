import 'package:flutter/material.dart';
import 'package:route/routes/second.dart';
import 'package:route/routes/third.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Screen',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Home Screen',
              style: Theme.of(context).textTheme.headline,
            ),
            RaisedButton(
              onPressed: () {
                /*  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second()),
                ); */

                Navigator.pushNamed(context, '/second');
              },
              child: Text('Open Second'),
            ),
            RaisedButton(
              onPressed: () {
                /*  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Second()),
                ); */

                Navigator.pushNamed(context, '/third');
              },
              child: Text('Open Third'),
            ),
          ],
        ),
      ),
    );
  }
}
