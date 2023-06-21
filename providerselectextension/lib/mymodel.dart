import 'package:flutter/cupertino.dart';

class MyModel with ChangeNotifier {
  String name = 'Zeyad Amr';
  int number = 0;

  inc() {
    number++;
    notifyListeners();
  }

  changeName() {
    if (name == 'Zeyad Amr') {
      name = 'Mohamed Ahmed';
    } else {
      name = 'Zeyad Amr';
    }
    notifyListeners();
  }
}
