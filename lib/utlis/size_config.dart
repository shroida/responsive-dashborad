import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktop = 1300;
  static const double tablet = 700;

  static late double width, height;

  static init(BuildContext context) {
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}