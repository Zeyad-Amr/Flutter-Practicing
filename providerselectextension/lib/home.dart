import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerselectextension/mymodel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => MyModel(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Widget1(),
              Widget2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Widget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var number = context.select((MyModel m) => m.number);
    print('number : $number');
    return Column(
      children: <Widget>[
        Text(
          number.toString(),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Provider.of<MyModel>(context, listen: false).inc();
          },
        )
      ],
    );
  }
}

class Widget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nm = context.select((MyModel namy) => namy.name);
    print('name : $nm');
    return Column(
      children: <Widget>[
        Text(nm),
        RaisedButton(
          child: Text('Change Name'),
          onPressed: () =>
              Provider.of<MyModel>(context, listen: false).changeName(),
        )
      ],
    );
  }
}
