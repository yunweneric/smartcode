import 'package:flutter/material.dart';
import 'package:smartcode/shared/constant.dart';

class MainDrawer8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Center(
        child: Column(
          children: [
            Container(
              height: 150.0,
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
                Navigator.pushNamed(context, '/Profilebar');
              },
              child: Card(
                color: primaryColor,
                child: ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: Text(
                    'PROFILE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Account');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.orange,
                  ),
                  title: Text('ACCOUNT'),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Networks');
              },
              child: Card(
                child: ListTile(
                  leading: Icon(
                    Icons.network_wifi,
                    color: Colors.orange,
                  ),
                  title: Text('NETWORKS'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
