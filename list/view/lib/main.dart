import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myKey = GlobalKey<ScaffoldState>();
  final List<String> entries = [
    'Box 1',
    'Box 2',
    'Box 3',
    'Box 4',
    'Box 6',
    'Box 7',
  ];
  final List<String> icco = [
    'Icons.directions_car',
    'Icons.directions_bus',
    'Icons.directions_car',
    'Icons.directions_bus',
    'Icons.directions_car',
    'Icons.directions_bus',
  ];
  final List<int> colorsCodes = [
    100,
    200,
    300,
    400,
    600,
    700,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: myKey,
      appBar: AppBar(
        title: Text('All About ListView'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        children: List.generate(1000, (index) {
          return Container(
            color: Colors.red,
            child: Center(
                child: Column(
              children: <Widget>[
                Icon(
                  Icons.directions_car,
                  size: 100,
                ),
                Text(
                  'item $index',
                  style: Theme.of(context).textTheme.headline,
                ),
                RaisedButton(
                  onPressed: () {},
                  child: Icon(Icons.add_shopping_cart),
                ),
              ],
            )),
          );
        }),
      ),
    );
  }
}
