import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool ism = true;
  double inLen = 0.0;
  double outLen = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Temperature unit converrtor',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter your Length',
                  labelText: ism
                      ? 'You entered $inLen meter'
                      : 'You entered $inLen milimeter'),
              onChanged: (value) {
                setState(() {
                  inLen = double.parse(value);
                });
              },
            ),
          ),
          RadioListTile(
            title: Text('meter'),
            value: true,
            groupValue: ism,
            onChanged: (val) {
              setState(() {
                ism = true;
              });
            },
          ),
          RadioListTile(
            title: Text('milimeter'),
            value: false,
            groupValue: ism,
            onChanged: (val) {
              setState(() {
                ism = false;
              });
            },
          ),
          RaisedButton(
            onPressed: () {
              setState(
                () {
                  outLen = ism ? (inLen * 1000) : (inLen / 1000);
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(
                        'The Result',
                      ),
                      content: ism
                          ? Text('$inLen meter = $outLen milimeter')
                          : Text('$inLen milimeter = $outLen meter'),
                    ),
                  );
                },
              );
            },
            child: Text(
              'Convert',
            ),
          ),
        ],
      ),
    );
  }
}
