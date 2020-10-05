import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer.dart';
import 'package:smartcode/shared/constant.dart';


import '../shared/constant.dart';

class NewQualification extends StatefulWidget {
  @override
  _NewQualificationState createState() => _NewQualificationState();
}

class _NewQualificationState extends State<NewQualification> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Center(
            child: Text(
              'SCHOLAR',
              style: TextStyle(
                letterSpacing: 1.2,
                fontSize: 28.0,
              ),
            ),
          ),
          actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Application');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.school,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('ADMISSIONS'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('HOME'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profilebar');
                    },
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('PROFILE'),
                      ],
                    ),
                  ),
                ),
                PopupMenuItem(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text('SIGN OUT'),
                      ],
                    ),
                  ),
                ),
              ],
              child: Icon(
                Icons.more_vert,
                size: 30,
              ),
            ),
          ),
        ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Home / Qualifications',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Create Qualifications',
                style: TextStyle(
                  fontSize: 30,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0),
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
                    hintText: "Institution",
                    prefixIcon: Icon(
                      Icons.school,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0),
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
                    hintText: "From Date: Oct 5, 2020",
                    prefixIcon: Icon(
                      Icons.calendar_today,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0),
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
                    hintText: "To Date: Oct 5, 2020",
                    prefixIcon: Icon(
                      Icons.calendar_today,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    )),
              ),
            ),
            Container(
              width: 370,
              color: Colors.white,
              child: Center(
                child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Select Program                                                         "),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Higher National Diploma"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text(" Bachelors Degree"), value: 3),
                      DropdownMenuItem(
                          child: Text(" Masters Degree"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              width: 270,
              child: Center(
                child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Our Related Academic Program     ",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text(" Software Engineering"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                          child: Text(" Food and Nutrition"), value: 3),
                      DropdownMenuItem(
                          child: Text(" Logistics and Transport"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
              ),
            ),


            SizedBox(
              height: 40,
            ),


            Container(
              width: 100.0,
              height: 40.0,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.blue)
                ),
                color: primaryColor,
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/Qualifications");
                },
              ),
            ),
          ],
        ),
        drawer: MainDrawer(),
      ),

    );
  }
}
