import 'package:flutter/material.dart';
import 'package:smartcode/screens/screens.dart';

Route geneateRoute(RouteSettings settings) {
  //check named route and return page
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<Widget>(builder: (context) => Home());

    case '/login':
      return MaterialPageRoute<Widget>(builder: (context) => Signin());

    case '/register':
      return MaterialPageRoute<Widget>(builder: (context) => Signup());

    case '/send-message':
      return MaterialPageRoute<Widget>(builder: (context) => SendMessage());

    default:
      return MaterialPageRoute<Widget>(builder: (context) => Home());
  }
}