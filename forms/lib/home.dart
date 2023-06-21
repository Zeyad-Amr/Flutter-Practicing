import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final scaffKey = GlobalKey<ScaffoldState>();
  var x = 'z';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffKey,
      appBar: AppBar(
        title: Text('Forms Lesson 1'),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter your name here',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Name required";
                } else {
                  x = value;
                  return null;
                }
              },
            ),
            RaisedButton(
              child: Text(
                'Send',
              ),
              onPressed: () {
                if (formKey.currentState.validate()) {
                  print(x);
                  scaffKey.currentState.showSnackBar(
                    SnackBar(
                      content: Text('Store text $x'),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
