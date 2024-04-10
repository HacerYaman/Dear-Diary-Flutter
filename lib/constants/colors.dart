import 'package:flutter/widgets.dart';

class AppColors{
  AppColors._();

  static const Color backgroundColor = Color.fromRGBO(254, 250, 224, 1);

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color.fromRGBO(204, 213, 174, 1),
      Color.fromRGBO(233, 237, 201, 1),
      Color.fromRGBO(254, 250, 224, 1),
      Color.fromRGBO(250, 237, 205, 1),
      Color.fromRGBO(212, 163, 115, 1),
    ],
  );

}