import 'package:flutter/material.dart';
import 'package:sqlitedatabase1/pages/newcourse.dart';
import 'package:sqlitedatabase1/dbhelper.dart';
import 'package:sqlitedatabase1/model/course.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  DbHelper helper;

  @override
  void initState() {
    super.initState();
    helper = DbHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SqLite Database'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => NewCourse(),
              ),
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        builder: (context, AsyncSnapshot snapshot) {
          return ListTile(
            title: Text('Hours'),
            subtitle: Text('co'),
            trailing: IconButton(
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                print('oo');
              },
            ),
          );
        },
      ),
    );
  }
}
