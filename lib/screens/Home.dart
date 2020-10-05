import 'package:flutter/material.dart';
import 'package:smartcode/shared/constant.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Scholar (SCHOLAR)",
                        style: TextStyle(color: primaryColor, fontSize: 26),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14.0),
                      child: Text(
                        "You are welcome to SCHOLAR",
                        style: TextStyle(color: primaryColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "You can apply anytime of the year with our rolling admissions.",
                        style: TextStyle(
                          color: primaryColor,
                        ),
                        textAlign: TextAlign.center,
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Never created an application account?",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
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
                      color: pinkColor,
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
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Already started an application or you are already a student?",
                          style: TextStyle(color: whiteColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "LOGIN HERE!",
                          style: TextStyle(color: whiteColor),
                        ),
                      ),
                      color: grayColor,
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
              Container(
                width: screenWidth(context),
                color: primaryColor,
                //height: screenHeight(context) / 7.45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "© SCHOLAR 2020",
                        style: TextStyle(color: whiteColor, fontSize: 10),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Records management",
                        style: TextStyle(color: whiteColor, fontSize: 10),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, "/send-message"),
        backgroundColor: greenColor,
        child: Icon(
          Icons.message,
          color: whiteColor,
        ),
        tooltip: "Maximize",
      ),
    );
  }
}
