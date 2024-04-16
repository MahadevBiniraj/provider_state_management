import 'package:flutter/material.dart';

class Homescreencontroller with ChangeNotifier {
  int count = 1;
  void increment() {
    count++;
    notifyListeners();
    print(count);
  }
}
