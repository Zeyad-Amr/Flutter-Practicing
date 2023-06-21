import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color val;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val,
      appBar: AppBar(title: Text('Flutter Radio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile(
              title: Text('Red'),
              value: Colors.red,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('orange'),
              value: Colors.orange,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('yellow'),
              value: Colors.yellow,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('green'),
              value: Colors.green,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('blue'),
              value: Colors.blue,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('indigo'),
              value: Colors.indigo,
              groupValue: val,
              onChanged: (vol) {
                setState(() {
                  val = vol;
                });
              },
            ),
            RadioListTile(
              title: Text('purple'),
              value: Colors.purple,
              groupValue: val,
              onChanged: (vol) {
                setState(
                  () {
                    val = vol;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
