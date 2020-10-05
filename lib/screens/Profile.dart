import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer.dart';
import 'package:smartcode/shared/constant.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                      onPressed: () {},
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
                'Home / Application Profiles',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'Application Profiles',
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
                      'New Profile',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/NewProfile');
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
              width: 200.0,
              height: 40.0,
              child: RaisedButton(
                color: primaryColor,
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/Workexperience");
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
