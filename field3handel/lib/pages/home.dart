import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';
  String textt = '';
  final myController = TextEditingController();

  bool val = false;

  @override
  initState() {
    super.initState();
    myController.addListener(() {
      setState(() {
        textt = myController.text;
      });
    });
  }

  /* getLatest() {
    setState(() {
      textt = myController.text;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: val ? Colors.blueGrey : Colors.grey,
      appBar: AppBar(
        title: Text('Flutter forms Lesson 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: <Widget>[
              Text(
                'You typed \n $text  ',
                style: Theme.of(context).textTheme.headline,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
                onChanged: (value) {
                  setState(
                    () {
                      text = value;
                    },
                  );
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'You typed \n $textt  ',
                style: Theme.of(context).textTheme.headline,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                ),
                controller: myController,
              ),
              SizedBox(
                height: 50,
              ),
              Switch(
                value: val,
                onChanged: (n) {
                  setState(() {
                    val = n;
                    print(val);
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
