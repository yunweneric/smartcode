import 'package:flutter/material.dart';

class NewPayfee extends StatefulWidget {
  @override
  _NewPayfeeState createState() => _NewPayfeeState();
}

class _NewPayfeeState extends State<NewPayfee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Text("Payfee"),
    ));
  }
}
