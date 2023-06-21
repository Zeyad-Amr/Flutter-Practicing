import 'package:flutter/material.dart';
import 'package:inheritedwidget/counter_provider.dart';
import 'package:inheritedwidget/second.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var provider = CounterProvider().of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter using InheritedWidget',
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.forward),
              onPressed: () {
                Navigator.of(context)
                    .push(
                      MaterialPageRoute(builder: (context) => Second()),
                    )
                    .then((value) => setState(() {}));
              })
        ],
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${provider.counter}',
                  style: Theme.of(context).textTheme.display1,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      provider.counter++;
                    });
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
