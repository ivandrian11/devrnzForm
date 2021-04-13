import 'package:flutter/material.dart';

List<Color> gradientColors = [Color(0xffFBB147), Color(0xffF57F24)];

BoxDecoration formDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: gradientColors,
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  ),
  borderRadius: BorderRadius.circular(5),
  boxShadow: buttonShadowGradient,
);

List<BoxShadow> buttonShadowGradient = [
  BoxShadow(
    color: Color(0xffD8802A),
    offset: Offset(1, 1),
    blurRadius: 4,
    spreadRadius: 1,
  ),
];

List<BoxShadow> buttonShadow = [
  BoxShadow(
    color: Colors.grey,
    offset: Offset(1, 1),
    blurRadius: 4,
    spreadRadius: 1,
  ),
];
