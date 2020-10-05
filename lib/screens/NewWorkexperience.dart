import "package:flutter/material.dart";
import 'package:smartcode/drawers/main-drawer1.dart';
import 'package:smartcode/shared/constant.dart';
import 'package:intl/intl.dart';

class NewWorkexperience extends StatefulWidget {
  @override
  _NewWorkexperience createState() => _NewWorkexperience();
}

class _NewWorkexperience extends State<NewWorkexperience> {
  @override
  Widget build(BuildContext context) {
    DateTime _datetime = new DateTime.now();
    int _value = 1;
    String _formateddate = new DateFormat.yMMMd().format(_datetime);
    return Scaffold(
      drawer: MainDrawer1(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        // title: Text('$_formateddate'),
        title: Text('New Work Experience'),
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
                'Home/Add new work Experience',
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
                  hintText: "Role",
                  prefixIcon: Icon(
                    Icons.supervisor_account,
                    size: 30.0,
                    color: Color(0xFF00C0C5),
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
                  hintText: 'From Date: $_formateddate',
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
                  hintText: 'To Date: $_formateddate',
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 0.0,
              ),
              child: TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.multiline,
                maxLines: 8,
                maxLength: 1000,
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
                  hintText: 'Work Description',
                ),
              ),
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
              height: 10.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/Workexperience');
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
