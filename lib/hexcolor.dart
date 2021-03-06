import  'package:flutter/material.dart';
//i can use this class in any future projects
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
//How to use:
/*
|
Color color1 = HexColor("b74093"); call my class and pass hexnum from the internet
Color color2 = HexColor("#b74093");
 */