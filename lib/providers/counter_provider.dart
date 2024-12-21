import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int value;

  CounterProvider({this.value = 0});

  void incrementCounter() {
    value++;
    notifyListeners(); // notifica os ouvintes sobre a mudança de estado
  }

  void decrementCounter() {
    value--;
    notifyListeners();
  }
}
