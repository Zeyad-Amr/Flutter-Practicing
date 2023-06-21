import 'package:flutter/cupertino.dart';

class MyModel with ChangeNotifier {
  String name;
  int number;

  inc() {
    number++;
    notifyListeners();
  }
}
