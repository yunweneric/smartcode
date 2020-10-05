import 'package:flutter/material.dart';
import 'package:smartcode/drawers/main-drawer.dart';
import 'package:smartcode/shared/constant.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
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
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(height: 150.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "SCHOLAR",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 36.0,
                          fontFamily: "Lato",
                          fontWeight: FontWeight.w900,
                          height: 1.5,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        "You are welcome to SCHOLAR! You can apply anytime of the year with our rolling admissions.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18.0,
                          fontFamily: "Lato",
                          height: 1.8,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                          color: blueColor,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor.withOpacity(0.8),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 0.0),
                            )
                          ]),
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "START APPLICATION HERE!",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                      color: Colors.orange,
                    ),
                    SizedBox(height: 14.0),
                    Container(
                      margin: EdgeInsets.fromLTRB(16, 8.0, 16, 0),
                      width: screenWidth(context),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        color: blueColor,
                        boxShadow: [
                          BoxShadow(
                            color: shadowColor.withOpacity(0.8),
                            blurRadius: 10.0,
                            spreadRadius: 2.0,
                            offset: Offset(0.0, 0.0),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/Welcome");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                      color: primaryColor,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/send-message"),
        backgroundColor: primaryColor,
        child: Icon(
          Icons.message,
          color: whiteColor,
        ),
        tooltip: "Maximize",
      ),
    );
  }
}
