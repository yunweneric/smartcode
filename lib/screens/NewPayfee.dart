import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer5.dart';
import 'package:smartcode/shared/constant.dart';

import '../shared/constant.dart';

class NewPayfee extends StatefulWidget {
  @override
  _NewPayfeeState createState() => _NewPayfeeState();
}

class _NewPayfeeState extends State<NewPayfee> {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text("Payfee"),
    // );
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
                'Home/PayFee',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                'PayFee',
                style: TextStyle(
                  fontSize: 30,
                  color: primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 200.0,
              height: 45,
              decoration: BoxDecoration(),
              margin: EdgeInsets.all(20),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                child: Center(
                  child: Table(
                    border: TableBorder.all(
                      color: grayColor,
                    ),
                    columnWidths: {
                      0: FlexColumnWidth(.3),
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
                              'Payment Method',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Phone Number',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Receiver name',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
                          Center(
                            child: Text(
                              'Instructions',
                              style: TextStyle(color: Colors.orange),
                            ),
                          ),
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
                          Center(
                            child: Text(
                              'MTN Mobile Money',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 12.0),
                            ),
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
                          Center(
                            child: Text(
                              'Orange Money',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 13.0),
                            ),
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
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Text(
                        "For 0 Applications You haven't Applied for any Program yet",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: primaryColor,
                        child: Text(
                          'PayFee',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/Done');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        drawer: MainDrawer5(),
      ),
    );
  }
}
