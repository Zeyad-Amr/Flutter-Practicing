import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Choice {
  final String title;
  final IconData icon;
  final int id;
  const Choice({this.title, this.icon, this.id});
}

var choices = <Choice>[
  Choice(title: 'Bicycle', icon: Icons.directions_bike, id: 0),
  Choice(title: 'Car', icon: Icons.directions_car, id: 1),
  Choice(title: 'Bus', icon: Icons.directions_bus, id: 2),
  Choice(title: 'Walk', icon: Icons.directions_walk, id: 3),
  Choice(title: 'Boat', icon: Icons.directions_boat, id: 4),
  Choice(title: 'Train', icon: Icons.directions_railway, id: 5),
];
