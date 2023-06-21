import 'package:flutter/material.dart';
import 'package:providerextension/mymodel.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Read Extension'),
      ),
      body: ListenableProvider(
        create: (context) => MyModel('zeyad amr', 26),
        child: Center(
          child: Column(
            children: <Widget>[
              MyNameWidget(),
              MyNumber(),
            ],
          ),
        ),
      ),
    );
  }
}
/* //  **************** Read Method ***********************
class MyNameWidget extends StatefulWidget {
  @override
  _MyNameWidgetState createState() => _MyNameWidgetState();
}

class _MyNameWidgetState extends State<MyNameWidget> {
  MyModel modell;
  @override
  void initState() {
    modell = context.read<MyModel>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(modell.name);
  }
} */

class MyNameWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var modeel = Provider.of<MyModel>(context, listen: false);
    return Text(modeel.name);
  }
}

class MyNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MyModel m = context.watch<MyModel>();
    return Column(
      children: <Widget>[
        Text('${m.number}'),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            m.inc();
          },
        )
      ],
    );
  }
}
