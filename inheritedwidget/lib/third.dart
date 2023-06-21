import 'package:flutter/material.dart';
import 'package:inheritedwidget/counter_provider.dart';

class Third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var pp = CounterProvider().of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Third',
        ),
      ),
      body: Center(
        child: StatefulBuilder(
          builder: (context, setState) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${pp.counter}',
                  style: Theme.of(context).textTheme.display1,
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      pp.counter++;
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
