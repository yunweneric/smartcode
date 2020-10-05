import 'package:flutter/material.dart';
import 'package:smartcode/widgets/curve_clipper.dart';

import "package:smartcode/shared/constant.dart";
// import '../shared/constant.dart';

bool _showPassword = false;

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF00C0C5),
                    // color: Colors.orange,
                  ),
                  // child: Image.asset(
                  //   "images/login.png",
                  //   // "images/login.png",
                  //   height: MediaQuery.of(context).size.height / 2.5,
                  //   // fit: BoxFit.cover,
                  //   width: 200,
                  // ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "SCHOLAR",
                style: TextStyle(
                  fontFamily: "Lato",
                  fontSize: 34.0,
                  fontWeight: FontWeight.bold,
                  // color: mainColor,
                  color: Color(0xFF00C0C5),
                  letterSpacing: 1.8,
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: grayColor,
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFF00C0C5),
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Email",
                      prefixIcon: Icon(
                        Icons.account_circle,
                        size: 30.0,
                        color: Color(0xFF00C0C5),
                      )),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: grayColor,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFF00C0C5),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                      size: 30.0,
                      color: Color(0xFF00C0C5),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        size: 30,
                        color: Color(0xFF00C0C5),
                      ),
                    ),
                  ),
                  obscureText: !_showPassword,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (_) => HomeScreen(),
                  //   ),
                  // );
                  Navigator.pushNamed(context, "/Profile");
                  // Navigator.pushNamedAndRemoveUntil(context, "/home");
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(
                    horizontal: 60.0,
                  ),
                  height: 40.0,
                  decoration: BoxDecoration(
                    color: Color(0xFF00C0C5),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Container(
                      color: Color(0xFF00C0C5),
                      alignment: Alignment.center,
                      height: 70.0,
                      child: Text(
                        "Don\'t have an account? Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
