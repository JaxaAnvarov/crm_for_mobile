import 'package:flutter/cupertino.dart';

class CounterIncrement extends ChangeNotifier {
  int _counter = 0;

  getCounterIncrement() => _counter;
  setCounterIncrement(int counter) => _counter = counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    if (_counter == 0) {
      _counter = 0;
      notifyListeners();
    }
  }
}
