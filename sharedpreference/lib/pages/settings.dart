import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int font = 5;
  int favColor = Colors.white.value;
  SharedPreferences prefs;

  saveData(int color) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt('favCl', color);
  }

  fontData(int foo) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setInt('fontSize', foo);
  }

  getData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      favColor = prefs.getInt('favCl') ?? Colors.white.value;
      font = prefs.getInt('fontSize') ?? 20;
    });
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Color(favColor),
      appBar: AppBar(
        title: Text(
          'Settings',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Select your favrouit color',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            RadioListTile(
              title: Text('Red'),
              value: Colors.red.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            RadioListTile(
              title: Text('Green'),
              value: Colors.green.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            RadioListTile(
              title: Text('yellow'),
              value: Colors.yellow.value,
              groupValue: favColor,
              onChanged: (int color) {
                setState(() {
                  favColor = color;
                });
                saveData(color);
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text('Select your font size'),
            RadioListTile(
              title: Text('10'),
              value: 10,
              groupValue: font,
              onChanged: (int fo) {
                setState(() {
                  font = fo;
                });
                fontData(fo);
              },
            ),
            RadioListTile(
              title: Text('20'),
              value: 20,
              groupValue: font,
              onChanged: (int fo) {
                setState(() {
                  font = fo;
                });
                fontData(fo);
              },
            ),
            RadioListTile(
              title: Text('30'),
              value: 30,
              groupValue: font,
              onChanged: (int fo) {
                setState(() {
                  font = fo;
                });
                fontData(fo);
              },
            ),
          ],
        ),
      ),
    );
  }
}
