import 'package:flutter/material.dart';
import 'package:smartcode/widgets/curve_clipper.dart';
// import "package:smartcode/lib/shared/constant.dart";
import "package:smartcode/shared/constant.dart";

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFFFFF), Color(0xFFFFFFFF)]),
            // colors: [Color(0xFFCED7e2), Color(0xFFFFFFFF)]),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    // color: Colors.red.shade100,
                    color: Color(0xFF00C0C5),
                  ),
                  // child: Image.asset(
                  //   "images/play.png",
                  //   height: MediaQuery.of(context).size.height / 2.5,
                  //   // fit: BoxFit.cover,
                  //   width: 200,
                  // ),
                ),
              ),
              Center(
                child: Text(
                  "SCHOLAR",
                  style: TextStyle(
                    fontFamily: "Lato",
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                    // color: Colors.,
                    color: Color(0xFF00C0C5),

                    letterSpacing: 2.0,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                      hintText: "Email",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.mail,
                        color: Color(0xFF00C0C5),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                child: TextField(
                  keyboardType: TextInputType.name,
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
                      hintText: "Username",
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Color(0xFF00C0C5),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
                    hintText: "Password",
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.account_circle,
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
              // Padding(
              //   padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              //   child: TextField(
              //     keyboardType: TextInputType.phone,
              //     decoration: InputDecoration(
              //       contentPadding: EdgeInsets.symmetric(vertical: 15.0),
              //       hintText: "Phone Number",
              //       fillColor: Colors.white,
              //       filled: true,
              //       prefixIcon: Icon(
              //         Icons.phone_iphone,
              //         color: Color(0xFF00C0C5),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20.0,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 80.0),
                  height: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF00C0C5),
                  ),
                  child: Text("Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      )),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      color: Color(0xFF00C0C5),
                      child: Text(
                        "Already have and account? Login",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
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
