import 'package:flutter/material.dart';

class AppColor {
  static const kPrimaryBlue = Color(0xff4970FB);
  static const kWhite = Color(0xffffffff);
  static const kYellow = Color(0xffFEC633);

  static const kBlueLinearGradient = LinearGradient(colors: [
    Color.fromARGB(255, 56, 99, 255),
    Color.fromARGB(255, 73, 109, 236),
    // Color(0xff8EA7FF),
  ], begin: Alignment.topCenter, end: Alignment.bottomCenter);
  static const kWhiteLinearGradient = LinearGradient(
    colors: [
      Color(0xffFFFFFF),
      Color.fromARGB(0, 142, 167, 255),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
