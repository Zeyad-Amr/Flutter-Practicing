import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proxyprovider/model.dart';

void main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MyModel>(
          create: (context) {
            return MyModel();
          },
        ),
        ProxyProvider<MyModel, AnotherModel>(update: (context, mod, mo) {
          return AnotherModel(mod);
        })
      ],
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Smart Home",
          home: Home(),
        );
      },
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Consumer<MyModel>(
              builder: (context, mod, child) {
                return Container(
                  child: Text(mod.name),
                );
              },
            ),
            Consumer<MyModel>(
              builder: (context, modd, child) {
                return RaisedButton(
                  child: Text('Model'),
                  onPressed: () {
                    modd.changeName('Hassan');
                  },
                );
              },
            ),
            Consumer<AnotherModel>(
              builder: (context, mooo, child) {
                return RaisedButton(
                  child: Text('Another Model'),
                  onPressed: () {
                    mooo.changeNameElse();
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
