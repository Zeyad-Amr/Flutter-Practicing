import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Center(
        child: Center(
          child: myCounter(context),
        ),
      ),
    );
  }

  Widget myCounter(BuildContext context) {
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.remove,
                size: 50,
                color: Colors.red,
              ),
              onPressed: () {
                setState(() {
                  counter--;
                });
              },
            ),
            Text(
              'Counter is $counter',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.add,
                size: 50,
                color: Colors.blue,
              ),
              onPressed: () {
                setState(() {
                  counter++;
                });
              },
            ),
          ],
        );
      },
    );
  }
}
