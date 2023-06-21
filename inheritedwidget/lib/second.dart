import 'package:flutter/material.dart';
import 'package:inheritedwidget/counter_provider.dart';
import 'package:inheritedwidget/third.dart';

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    var p = CounterProvider().of(context);
    return widget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Second',
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  Navigator.of(context)
                      .push(
                        MaterialPageRoute(builder: (context) => Third()),
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
                    '${p.counter}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        p.counter++;
                      });
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
