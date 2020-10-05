import 'package:flutter/material.dart';
import 'package:smartcode/screens/Application.dart';
import 'package:smartcode/screens/Documents.dart';
import 'package:smartcode/screens/Done.dart';
import 'package:smartcode/screens/NewAdmission.dart';
import 'package:smartcode/screens/NewDocuments.dart';
import 'package:smartcode/screens/NewParents.dart';
import 'package:smartcode/screens/NewPayfee.dart';
import 'package:smartcode/screens/NewProfile.dart';
import 'package:smartcode/screens/NewQualification.dart';
import 'package:smartcode/screens/Profilebar.dart';
import 'package:smartcode/screens/Summary.dart';
import 'package:smartcode/screens/NewWorkexperience.dart';
import 'package:smartcode/screens/Welcome.dart';
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

    case '/Parents':
      return MaterialPageRoute<Widget>(builder: (context) => Parents());

    case '/NewParents':
      return MaterialPageRoute<Widget>(builder: (context) => NewParents());

    case '/Qualifications':
      return MaterialPageRoute<Widget>(builder: (context) => Qualifications());

    case '/NewQualification':
      return MaterialPageRoute<Widget>(
          builder: (context) => NewQualification());

    case '/Summary':
      return MaterialPageRoute<Widget>(builder: (context) => SummaryAll());

    case '/Dashboard':
      return MaterialPageRoute<Widget>(builder: (context) => Dashboard());

    case '/NewPayfee':
      return MaterialPageRoute<Widget>(builder: (context) => NewPayfee());

    case '/Payfee':
      return MaterialPageRoute<Widget>(builder: (context) => Payfee());

    case '/Profile':
      return MaterialPageRoute<Widget>(builder: (context) => Profile());

    case '/NewProfile':
      return MaterialPageRoute<Widget>(builder: (context) => NewProfile());

    case '/Workexperience':
      return MaterialPageRoute<Widget>(builder: (context) => Workexperience());

    case '/NewWorkexperience':
      return MaterialPageRoute<Widget>(
          builder: (context) => NewWorkexperience());

    case '/Documents':
      return MaterialPageRoute<Widget>(builder: (context) => Documents());

    case '/NewDocuments':
      return MaterialPageRoute<Widget>(builder: (context) => NewDocuments());

    case '/Done':
      return MaterialPageRoute<Widget>(builder: (context) => Done());

    case '/Welcome':
      return MaterialPageRoute<Widget>(builder: (context) => Welcome());

    case '/Profilebar':
      return MaterialPageRoute<Widget>(builder: (context) => Profilebar());

    default:
      return MaterialPageRoute<Widget>(builder: (context) => Home());
  }
}
