/* import 'package:flutter/material.dart';
import 'package:sqlitedatabase1/pages/newcourse.dart';
import 'package:sqlitedatabase1/dbhelper.dart';

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
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text('${snapshot.data[i]['name']}'),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
 */

import 'package:flutter/material.dart';
import 'package:sqlitedatabase1/dbhelper.dart';
import 'package:sqlitedatabase1/model/course.dart';
import 'package:sqlitedatabase1/pages/newcourse.dart';

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
        title: Text('SQLite Database'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => NewCourse())),
          )
        ],
      ),
      body: FutureBuilder(
        future: helper.allCourses(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, i) {
                  Course course = Course.fromMap(snapshot.data[i]);
                  return Card(
                    child: ListTile(
                      title: Text('${course.name} - ${course.hours} Hours'),
                      subtitle: Text(course.content),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
