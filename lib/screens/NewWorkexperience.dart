// import 'package:flutter/material.dart';
// import 'package:smartcode/drawers/main-drawer1.dart';
// import 'package:smartcode/shared/constant.dart';

// class NewWorkexperience extends StatefulWidget {
//   @override
//   _NewWorkexperienceState createState() => _NewWorkexperienceState();
// }

// class _NewWorkexperienceState extends State<NewWorkexperience> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: primaryColor,
//           title: Center(
//             child: Text(
//               'SCHOLAR',
//               style: TextStyle(
//                 letterSpacing: 1.2,
//                 fontSize: 28.0,
//               ),
//             ),
//           ),
//           actions: [
//             Padding(
//               padding: const EdgeInsets.all(15.0),
//               child: PopupMenuButton(
//                 itemBuilder: (context) => [
//                   PopupMenuItem(
//                     child: Row(
//                       children: [
//                         Text('HOME'),
//                       ],
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: Row(
//                       children: [
//                         Icon(
//                           Icons.person,
//                           color: Colors.black45,
//                         ),
//                         Text('ADMISSIONS'),
//                       ],
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: Row(
//                       children: [
//                         Text('PROFILE'),
//                       ],
//                     ),
//                   ),
//                   PopupMenuItem(
//                     child: Row(
//                       children: [
//                         Text('SIGN OUT'),
//                       ],
//                     ),
//                   ),
//                 ],
//                 child: Icon(
//                   Icons.more_vert,
//                   size: 30,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         body: Column(
//           children: [
//             SizedBox(
//               height: 40.0,
//             ),
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               child: Text(
//                 'Home/Work Experience',
//                 style: TextStyle(fontWeight: FontWeight.w400),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               child: Text(
//                 'New Work Experience',
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: primaryColor,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//               child: TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: grayColor,
//                       ),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xFF00C0C5),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15.0),
//                     fillColor: Colors.white,
//                     filled: true,
//                     hintText: "Company",
//                     prefixIcon: Icon(
//                       Icons.work,
//                       size: 30.0,
//                       color: Color(0xFF00C0C5),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Padding(
//               padding:
//                   const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
//               child: TextField(
//                 keyboardType: TextInputType.emailAddress,
//                 decoration: InputDecoration(
//                     enabledBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: grayColor,
//                       ),
//                     ),
//                     focusedBorder: UnderlineInputBorder(
//                       borderSide: BorderSide(
//                         color: Color(0xFF00C0C5),
//                       ),
//                     ),
//                     contentPadding: EdgeInsets.symmetric(vertical: 15.0),
//                     fillColor: Colors.white,
//                     filled: true,
//                     hintText: "Role",
//                     prefixIcon: Icon(
//                       Icons.account_circle,
//                       size: 30.0,
//                       color: Color(0xFF00C0C5),
//                     )),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             Container(
//               // width: 400,
//               child: Row(
//                 // crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   RaisedButton(
//                     color: primaryColor,
//                     child: Text(
//                       'Previous',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/Profile');
//                     },
//                   ),
//                   RaisedButton(
//                     color: primaryColor,
//                     child: Text(
//                       'Next',
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.pushNamed(context, '/Qualifications');
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         drawer: MainDrawer1(),
//       ),
//     );
//   }
// }

import "package:flutter/material.dart";
import 'package:smartcode/drawers/main-drawer1.dart';
import 'package:smartcode/shared/constant.dart';

class NewWorkexperience extends StatefulWidget {
  @override
  _NewWorkexperience createState() => _NewWorkexperience();
}

class _NewWorkexperience extends State<NewWorkexperience> {
  List<Step> steps = [
    Step(
      title: const Text('New Work Experience'),
      isActive: true,
      state: StepState.complete,
      content: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: grayColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF00C0C5),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                hintText: "Company",
                prefixIcon: Icon(
                  Icons.work,
                  size: 30.0,
                  color: Color(0xFF00C0C5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: grayColor,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF00C0C5),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                hintText: "Company",
                prefixIcon: Icon(
                  Icons.work,
                  size: 30.0,
                  color: Color(0xFF00C0C5),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: grayColor,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF00C0C5),
                ),
              ),
              fillColor: Colors.white,
              filled: true,
              hintText: "Role",
              prefixIcon: Icon(
                Icons.supervisor_account,
                size: 35.0,
                color: Color(0xFF00C0C5),
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Middle name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Gender'),
          ),
          new ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Birthday'),
            subtitle: const Text('February 20, 1980'),
            trailing: const Icon(
              Icons.check_circle,
              color: Colors.green,
            ),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Birth Place'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Nationality'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Blood Group'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Mother Tongue'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Religion'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Current Qualification'),
          ),
        ],
      ),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Contact Details'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Parent address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Permanent address'),
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Parent Details'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
    Step(
      title: const Text('Done'),
      // subtitle: const Text("Error!"),
      content: Column(
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red,
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Create an account'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
            ),
          ),
        ],
      ),
      drawer: MainDrawer1(),
    );
  }
}
