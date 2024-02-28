import 'package:flutter/material.dart';

import '../model_provider/Counter.dart';


class CounterProvider extends ChangeNotifier{
  final Counter _counter = Counter(0);
  Counter get counter => _counter;

  void increment (){
    _counter.count++;
    notifyListeners();
  }

  void decrement(){
    _counter.count--;
    notifyListeners();
  }
}