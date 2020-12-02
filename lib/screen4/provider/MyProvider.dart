

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';

class MyProvider extends ChangeNotifier{
  Color color = Colors.grey;

  void changeColor(int length) {
    if (length > 0) {
      color =  Colors.white;
    } else {
      color = Colors.black;
    }
    print(length);

    notifyListeners();
  }
}


final colorProvider2 = ChangeNotifierProvider((_) => MyProvider());

final colorProvider = StateProvider<Color>((_) => Colors.grey);