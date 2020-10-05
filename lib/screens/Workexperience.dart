import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer1.dart';
import 'package:smartcode/shared/constant.dart';

class Workexperience extends StatefulWidget {
  @override
  _WorkexperienceState createState() => _WorkexperienceState();
}

class _WorkexperienceState extends State<Workexperience> {
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
                    child: Row(
                      children: [
                        Text('HOME'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.black45,
                        ),
                        Text('ADMISSIONS'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Text('PROFILE'),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    child: Row(
                      children: [
                        Text('SIGN OUT'),
                      ],
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
                'Home/Work Experience',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Work Experience',
                style: TextStyle(
                  fontSize: 30,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200.0,
              height: 45,
              decoration: BoxDecoration(),
              margin: EdgeInsets.all(20),
              child: RaisedButton(
                color: primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    Text(
                      'New Work Experience',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/NewWorkexperience');
                },
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(left: 5, right: 5),
                child: Table(
                  border: TableBorder.all(
                    color: grayColor,
                  ),
                  columnWidths: {
                    0: FlexColumnWidth(.3),
                    4: FlexColumnWidth(.5)
                  },
                  children: [
                    TableRow(
                      children: [
                        Center(
                          child: Container(
                            height: 40,
                            child: Text(
                              '#',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Profile Title',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Names',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Personal Email',
                            style: TextStyle(color: Colors.orange),
                          ),
                        ),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Center(
                          child: Container(
                            height: 40,
                            child: Text(
                              '1',
                            ),
                          ),
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Center(
                          child: Container(
                            height: 40,
                            child: Text(
                              '2',
                            ),
                          ),
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Center(
                          child: Container(
                            height: 40,
                            child: Text(
                              '3',
                            ),
                          ),
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(''),
                      ],
                    ),
                    TableRow(
                      children: [
                        Center(
                          child: Container(
                            height: 40,
                            child: Text(
                              '4',
                            ),
                          ),
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(
                          '',
                        ),
                        Text(''),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // width: 400,
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RaisedButton(
                    color: primaryColor,
                    child: Text(
                      'Previous',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profile');
                    },
                  ),
                  RaisedButton(
                    color: primaryColor,
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Qualifications');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        drawer: MainDrawer1(),
      ),
    );
  }
}
