import 'package:flutter/material.dart';
import 'package:smartcode/screens/Application.dart';
import 'package:smartcode/screens/NewAdmission.dart';
import 'package:smartcode/screens/NewParents.dart';
import 'package:smartcode/screens/Summary.dart';
import 'package:smartcode/screens/NewWorkexperience.dart';
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

    case '/Admission':
      return MaterialPageRoute<Widget>(builder: (context) => Admission());
    case '/NewAdmission':
      return MaterialPageRoute<Widget>(builder: (context) => NewAdmission());
    case '/Application':
      return MaterialPageRoute<Widget>(builder: (context) => Application());

    case '/NewApplication':
      return MaterialPageRoute<Widget>(builder: (context) => Newapplication());
    case '/Parent':
      return MaterialPageRoute<Widget>(builder: (context) => Parents());
    case '/NewParent':
      return MaterialPageRoute<Widget>(builder: (context) => NewParents());
    case '/Qualification':
      return MaterialPageRoute<Widget>(builder: (context) => Qualifications());
    case '/NewQualification':
      return MaterialPageRoute<Widget>(
          builder: (context) => NewQualification());
    case '/Summary':
      return MaterialPageRoute<Widget>(builder: (context) => SummaryAll());
    case '/Dashboard':
      return MaterialPageRoute<Widget>(builder: (context) => Dashboard());
    case '/Payfee':
      return MaterialPageRoute<Widget>(builder: (context) => Payfee());

    default:
      return MaterialPageRoute<Widget>(builder: (context) => Home());
  }
}
