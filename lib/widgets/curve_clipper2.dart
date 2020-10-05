import 'package:flutter/material.dart';

class CurveClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo((size.width / 4) , size.height);
    Offset curvePoint1 = Offset((3 * size.width / 4), 3.8 * size.height / 4);
    Offset centerPoint = Offset((3 * size.width / 3.5) + 20, size.height / 2);
    path.quadraticBezierTo(
      curvePoint1.dx,
      curvePoint1.dy,
      centerPoint.dx,
      centerPoint.dy,
    );
    Offset curvePoint2 = Offset((3 * size.width / 4) + 80, size.height / 3);
    Offset endPoint = Offset(size.width, 0);
    path.quadraticBezierTo(
      curvePoint2.dx,
      curvePoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();

    // throw UnimplementedError();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // throw UnimplementedError();
    return false;
  }
}
