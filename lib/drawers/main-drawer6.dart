import 'package:flutter/material.dart';
import 'package:smartcode/shared/constant.dart';

class MainDrawer6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 100.0,
              color: primaryColor,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'DASHBOARD',
                    style: TextStyle(
                      fontSize: 28.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Profile');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  title: Text(
                    'PERSONAL DETAILS(REQUIRED)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Workexperience');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.work,
                    color: Colors.green,
                  ),
                  title: Text(
                    'WORK EXPERIENCE (OPTIONAL)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/Qualifications',
                );
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.green,
                  ),
                  title: Text(
                    'QUALIFICATION(OPTIONAL)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Parents');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  title: Text(
                    'PARENT DETAILS(OPTIONAL)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Documents');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.green,
                  ),
                  title: Text(
                    'DOCUMENTS(OPTIONAL)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Application');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.green,
                  ),
                  title: Text(
                    'CREATE APPLICATIONS(REQUIRED)',
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Payfee');
              },
              child: Card(
                color: primaryColor,
                child: ListTile(
                  leading: Icon(
                    Icons.folder,
                    color: Colors.white,
                  ),
                  title: Text(
                    'APPLICATION FEES(REQUIRED)',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.orange,
                onPressed: () {
                  // Navigator.pushNamed(context, '/Done');
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/Done', (route) => false);
                },
                child: Center(
                  child: Text(
                    'PAY & SUBMIT ALL',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
