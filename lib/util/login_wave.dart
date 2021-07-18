import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class WaveClipper extends CustomClipper<Path> {
  /// This is responsible for showing curves in login screen

  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height / 1.7);
    var firstControlPoint = Offset(size.width / 4, size.height / 2);
    var firstEndPoint = Offset(size.width / 2, size.height / 2);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 2);
    var secondEndPoint = Offset(size.width, size.height / 4);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(WaveClipper oldClipper) => true;
}
