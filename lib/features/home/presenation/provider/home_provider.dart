import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int currentIndex = 0;

  void switchScreen(int index){
    currentIndex  = index;
    notifyListeners();
  }
}