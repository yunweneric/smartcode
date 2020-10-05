import 'package:flutter/material.dart';
import 'package:smartcode/shared/constant.dart';
import 'package:smartcode/widgets/curve_clipper2.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      // color: Colors.white,

      body: SafeArea(
        child: ClipPath(
          clipper: CurveClipper2(),
          child: Container(
            // color: Colors.white,
            color: primaryColor,

            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 50.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "WELCOME \n TO SCHOLAR",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32.0,
                        fontFamily: "Lato",
                        fontWeight: FontWeight.w900,
                        height: 1.5,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  "images/log.png",
                  width: 300,
                ),
                Container(
                  height: 45.0,
                  width: 150,
                  child: FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 45.0,
                  width: 150,
                  child: FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
