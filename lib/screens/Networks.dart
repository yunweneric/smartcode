import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer8.dart';
import 'package:smartcode/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Networks extends StatefulWidget {
  @override
  _NetworksState createState() => _NetworksState();
}

class _NetworksState extends State<Networks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer8(),
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
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
          ),
          // height: MediaQuery.of(context).size.height,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 80,
                  backgroundImage: AssetImage('images/profile.jpg'),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          "You can connect multiple account to be able to login using them",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 20.0,
                      child: Divider(
                        color: Colors.orange,
                      ),
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "images/facebook.svg",
                                width: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                color: primaryColor,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("Connect",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "images/twitter.svg",
                                width: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                color: primaryColor,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("Connect",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: Colors.white,
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset(
                                "images/gmail.svg",
                                width: 50,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                color: primaryColor,
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text("Connect",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ),
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
