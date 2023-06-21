import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/pages/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int font = 20;

  int favvColor = Colors.white.value;
  SharedPreferences prefs;
  getData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      favvColor = prefs.getInt('favCl') ?? Colors.white.value;
      font = prefs.getInt('fontSize') ?? 20.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Color(favvColor),
      appBar: AppBar(
        title: Text(
          'Shared Preferences',
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => Settings(),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                  fontSize: font.toDouble(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
