import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyModel with ChangeNotifier {
  String name = 'Zeyad';
  void changeName(String val) {
    name = val;
    notifyListeners();
  }
}

class AnotherModel with ChangeNotifier {
  MyModel model;
  AnotherModel(this.model);
  void changeNameElse() {
    model.changeName('Mohamed');
  }
}
