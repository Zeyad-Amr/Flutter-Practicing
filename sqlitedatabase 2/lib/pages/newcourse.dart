import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sqlitedatabase1/dbhelper.dart';
import 'package:sqlitedatabase1/model/course.dart';

class NewCourse extends StatefulWidget {
  @override
  _NewCourseState createState() => _NewCourseState();
}

class _NewCourseState extends State<NewCourse> {
  String name, content;
  int hours;
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
        title: Text(
          'New Course',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter course name',
                ),
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Enter course content',
                ),
                onChanged: (value) {
                  setState(() {
                    content = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter course hours',
                ),
                onChanged: (value) {
                  setState(() {
                    hours = int.parse(value);
                  });
                },
              ),
              RaisedButton(
                onPressed: () async {
                  Course c = Course(
                      {'name': name, 'content': content, 'hours': hours});
                  int id = await helper.createCourse(c);
                  Navigator.of(context).pop();
                },
                child: Text('Save'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
