import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Data extends ChangeNotifier {
  int quantity = 0;
  String image = '';
  String name = '';
  String email = '';
  String mobile = '';

  saveQuantity(int value) {
    quantity = value;
    notifyListeners();
  }

  saveName(String value) {
    name = value;
    notifyListeners();
  }

  saveImage(String value) {
    image = value;
    notifyListeners();
  }

  saveEmail(String value) {
    email = value;
    notifyListeners();
  }

  saveMobile(String value) {
    mobile = value;
    notifyListeners();
  }
}
