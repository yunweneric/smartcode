import 'package:flutter/material.dart';

//--------------------------- screen height & width ----------------------------

double screenHeight(context) {
  return MediaQuery.of(context).size.height;
}

double screenWidth(context) {
  return MediaQuery.of(context).size.width;
}

//--------------------------- Colors -------------------------------------------

// Material color
const MaterialColor primaryColorMaterial = MaterialColor(
  0xFF98C429,
  <int, Color>{
    50: Color.fromRGBO(152, 196, 41, .1),
    100: Color.fromRGBO(152, 196, 41, .2),
    200: Color.fromRGBO(152, 196, 41, .3),
    300: Color.fromRGBO(152, 196, 41, .4),
    400: Color.fromRGBO(152, 196, 41, .5),
    500: Color.fromRGBO(152, 196, 41, .6),
    600: Color.fromRGBO(152, 196, 41, .7),
    700: Color.fromRGBO(152, 196, 41, .8),
    800: Color.fromRGBO(152, 196, 41, .9),
    900: Color.fromRGBO(152, 196, 41, 1),
  },
);

// Theme color
const Color primaryColor = Color(0xFF98C429);
const Color blueColor = Color(0xFF00D3EE);
const Color pinkColor = Color(0xFF9C27B0);
const Color grayColor = Color(0xFF999999);
const Color greenColor = Color(0xFF03A74E);

const Color whiteColor = Color(0xFFFFFFFF);
const Color shadowColor = Color(0xFFC9E2E7);