import 'package:flutter/material.dart';
import 'package:route/routes/home.dart';

class Third extends StatelessWidget {
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
              'Third Screen',
              style: Theme.of(context).textTheme.headline,
            ),
            RaisedButton(
              onPressed: () {
                /* Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                ); */

                Navigator.of(context).pop();
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
