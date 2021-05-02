import 'package:flutter/foundation.dart';

class BMIProvider with ChangeNotifier {
  bool _isMale = true;
  int _weight = 56;
  int _height = 165;

  int get height => _height;
  int get weight => _weight;
  bool get isMale => _isMale;

  set height(int height) {
    _height = height;
    notifyListeners();
  }

  set weight(int weight) {
    _weight = weight;
    notifyListeners();
  }

  set isMale(bool value) {
    _isMale = value;
    notifyListeners();
  }
}
