import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smartcode/drawers/main-drawer5.dart';
import 'package:smartcode/shared/constant.dart';

class Newapplication extends StatefulWidget {
  @override
  _NewapplicationState createState() => _NewapplicationState();
}

DateTime _datetime = new DateTime.now();

class _NewapplicationState extends State<Newapplication> {
  int _value = 1;
  String _formateddate = new DateFormat.yMMMd().format(_datetime);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer5(),
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40.0,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                'Home/Add new Application',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              child: TextField(
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
                  hintText: "Profile Name",
                  prefixIcon: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Color(0xFF00C0C5),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: TextField(
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
                  hintText: 'Expected Start Date: $_formateddate',
                  prefixIcon: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.calendar_today,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: TextField(
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
                  hintText: 'Expected Finish Date: $_formateddate',
                  prefixIcon: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.calendar_today,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              // child: Text('$_formateddate'),
              height: 20,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: DropdownButton(
                      // style: TextStyle(color: Colors.white),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Select Campus",
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Buea Campus"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(" Bamenda Campus "), value: 3),
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: DropdownButton(
                      // style: TextStyle(color: Colors.white),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Select Program",
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Food and Nutrition"),
                          value: 2,
                        ),
                        DropdownMenuItem(
                            child: Text(" Software Enginnering"), value: 3),
                        DropdownMenuItem(
                            child: Text(" Transport and Logistics"), value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: DropdownButton(
                      // style: TextStyle(color: Colors.white),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Mode of study",
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Campus"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text(" Online"), value: 3),
                        DropdownMenuItem(child: Text(" Hybrid"), value: 4),
                        DropdownMenuItem(
                            child: Text(" Distance Learning"), value: 5)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: DropdownButton(
                      // style: TextStyle(color: Colors.white),
                      value: _value,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            "Admission Type ",
                          ),
                          value: 1,
                        ),
                        DropdownMenuItem(
                          child: Text("Regular"),
                          value: 2,
                        ),
                        DropdownMenuItem(child: Text("Top-user"), value: 3),
                        DropdownMenuItem(child: Text("Transfer"), value: 4)
                      ],
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Application');
                },
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
