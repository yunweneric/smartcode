import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer5.dart';
import 'package:smartcode/shared/constant.dart';

import '../shared/constant.dart';
import '../shared/constant.dart';

class NewPayfee extends StatefulWidget {
  @override
  _NewPayfeeState createState() => _NewPayfeeState();
}

class _NewPayfeeState extends State<NewPayfee> {
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
                margin: EdgeInsets.only(left: 5, right: 5,  ),
                child: Table(
                  border: TableBorder.symmetric(
                    inside: BorderSide(width: 0),
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
                            style: TextStyle(color: Colors.black,
                            fontSize: 12.0),
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
                            style: TextStyle(color: Colors.black,
                            fontSize: 13.0),
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
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Divider(color: Colors.blue, ),
            ),
            Container(
              // width: 400,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 260.0, bottom: 10.0),
                    child: Text("For 0 Applications",
                    style: TextStyle(
                      color: primaryColor,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 130.0, bottom: 20.0),
                    child: Text("You haven't Applied for any Program yet",
                    style: TextStyle(
                      color: primaryColor,
                    ),),
                  ),

                  RaisedButton(
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
                ],
              ),
            ),
          ],
        ),
        drawer: MainDrawer5(),
      ),
        );
  }
}
