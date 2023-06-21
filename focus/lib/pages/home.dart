import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var myFocus;
  @override
  void initState() {
    super.initState();
    myFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    myFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Forms lesson 2'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'First Name',
                ),
              ),
              TextFormField(
                focusNode: myFocus,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                ),
              ),

              //Only from one text field to another bt 2 only
              TextFormField(
                focusNode: myFocus,
                decoration: InputDecoration(
                  hintText: 'Lastttt Name',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => myFocus.requestFocus(),
        child: Text(
          'Next',
        ),
      ),
    );
  }
}
