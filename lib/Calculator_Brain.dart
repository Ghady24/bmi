import 'package:flutter/material.dart';

class CalculatorBrain {
  double weight , height;
  double _bmi=0;
  CalculatorBrain(@required this.weight , @required this.height){}
  double clac(){
    return _bmi = weight/height;
  }
  String res(){
    if (_bmi < 18.5) return 'your fucked';
    else if (_bmi >= 18.5 || _bmi < 25)return 'cool';
    else return 'stop eating';
  }
}