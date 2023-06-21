import 'package:curie/constants/colors.dart';
import 'package:flutter/material.dart';
import 'fonts.dart';

class TextStyles {
  static const TextStyle h1 = TextStyle(
      fontSize: FontSize.xXXL,
      fontWeight: Weight.bold,
      color: ApplicationColors.black);
  static const TextStyle h2 = TextStyle(
      fontSize: FontSize.xXL,
      fontWeight: Weight.heavy,
      color: ApplicationColors.black);
  static const TextStyle h3 = TextStyle(
      fontSize: FontSize.M, fontWeight: Weight.heavy, color: Colors.white);
  static const TextStyle buttonText = TextStyle(
      fontSize: FontSize.L, fontWeight: Weight.heavy, color: Colors.black);
  static const TextStyle bodyText = TextStyle(
      fontSize: FontSize.M,
      fontWeight: Weight.normal,
      color: ApplicationColors.black);
  static TextStyle smallText = const TextStyle(
      fontSize: FontSize.S, fontWeight: Weight.normal, color: Colors.white);
}
