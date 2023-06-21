import 'package:flutter/material.dart';
import 'package:color/choice.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

int selected = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      width: 70,
                      height: 70,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/tor.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Zeyad Amr Fekry',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'zeyadamr262000@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text('Home'),
                onTap: () {
                  print('Hello Home');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.red,
                ),
                title: Text('Setting'),
                onTap: () {
                  print('Hello Setting');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.red,
                ),
                title: Text('Contact'),
                onTap: () {
                  print('Hello Contact');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Ride What !'),
          actions: <Widget>[
            IconButton(
              icon: Icon(choices[0].icon),
              onPressed: () {
                setState(() {
                  selected = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[1].icon),
              onPressed: () {
                setState(() {
                  selected = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[2].icon),
              onPressed: () {
                setState(() {
                  selected = 2;
                });
              },
            ),
            /*  IconButton(
              icon: Icon(choices[3].icon),
              onPressed: () {
                setState(() {
                  selected = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[4].icon),
              onPressed: () {
                setState(() {
                  selected = 4;
                });
              },
            ),
            IconButton(
              icon: Icon(choices[5].icon),
              onPressed: () {
                setState(() {
                  selected = 5;
                });
              },
            ), */
            PopupMenuButton(
              itemBuilder: (context) {
                return choices.skip(3).map((choice) {
                  return PopupMenuItem(
                    value: choice,
                    child: Text(choice.title),
                  );
                }).toList();
              },
              onSelected: (Choice choice) {
                setState(() {
                  selected = choice.id;
                });
              },
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'home',
              ),
              Tab(
                text: 'Setting',
              ),
              Tab(
                text: 'Contact',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            //first Tab
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.grey[400],
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Icon(
                          choices[selected].icon,
                          size: 300,
                          color: Colors.red[600],
                        ),
                        SizedBox(
                          child: Text(
                            choices[selected].title,
                            style: TextStyle(
                                fontSize: 100,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*  MyButton(), */
                        Builder(builder: (context) {
                          return RaisedButton(
                            child: Text('Show SnackBar'),
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Helllo SnackBar'),
                                ),
                              );
                            },
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Second Tab
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.grey[400],
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Icon(
                          choices[1].icon,
                          size: 300,
                          color: Colors.red[600],
                        ),
                        SizedBox(
                          child: Text(
                            choices[1].title,
                            style: TextStyle(
                                fontSize: 100,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*  MyButton(), */
                        Builder(builder: (context) {
                          return RaisedButton(
                            child: Text('Show SnackBar'),
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Helllo SnackBar'),
                                ),
                              );
                            },
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Third Tab
            Center(
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.grey[400],
                    width: double.infinity,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 100,
                        ),
                        Column(
                          children: <Widget>[
                            Icon(
                              choices[2].icon,
                              size: 300,
                              color: Colors.red[600],
                            ),
                            Switch(
                              value: true,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Zeyad AMr',
                              // ignore: deprecated_member_use
                              style: Theme.of(context).textTheme.headline,
                            ),
                          ],
                        ),
                        SizedBox(
                          child: Text(
                            choices[2].title,
                            style: TextStyle(
                                fontSize: 100,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*  MyButton(), */
                        Builder(builder: (context) {
                          return RaisedButton(
                            child: Text('Show SnackBar'),
                            onPressed: () {
                              Scaffold.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(choices[2].title),
                                ),
                              );
                            },
                          );
                        })
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(
              size: 50,
              color: Colors.red,
            ),
          ),
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
