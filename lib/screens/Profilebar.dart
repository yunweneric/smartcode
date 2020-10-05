import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

class Profilebar extends StatefulWidget {
  @override
  _ProfilebarState createState() => _ProfilebarState();
}

class _ProfilebarState extends State<Profilebar> {
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
        child: Column(children: [
          SizedBox(
            child: Container(
              height: 300.0,
              width: double.infinity,
              decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("images/profile.jpg"),
                  fit: BoxFit.cover,
                  // colorFilter: ColorFilterLayer
                ),
              ),
              child: SizedBox(
                height: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 50,
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
    // return Container(
    //   child: Column(
    //     mainAxisSize: MainAxisSize.max,
    //     children: [
    //       Container(
    //         decoration: BoxDecoration(
    //           image: new DecorationImage(image: AssetImage("images/login.png")),
    //         ),
    //       )
    //     ],
    //   ),
    // );
  }
}
