import 'package:flutter/material.dart';
import 'package:metro_sports/utils/utils.dart';

class Styles {
  static TextStyle designHeading() => TextStyle(
      color: Palette.primary, fontWeight: FontWeight.bold, fontSize: 22.0);
  static TextStyle designSubHeading() => TextStyle(
      color: Colors.black45, fontWeight: FontWeight.bold, fontSize: 15.0);
  static TextStyle designText(Color color, double size, bool bold) => TextStyle(
      color: color,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
      fontSize: size);
}
