import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: Clipping2Class(),
          child: Container(
            color: Color(0xFF7EC06F),
            height: 200.0,
            width: double.infinity,
          ),
        ),
        ClipPath(
          clipper: ClippingClass(),
          child: Container(
            color: Color(0xFF5CBC47),
            padding: EdgeInsets.fromLTRB(40.0, 70.0, 40.0, 0.0),
            height: 170.0,
            alignment: Alignment.topRight,
            width: double.infinity,
            //margin: EdgeInsets.only(bottom: 60.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
      ],
    );
  }
}
class Clipping2Class extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width/3.5, size.height - 40.0);
    path.quadraticBezierTo(
        size.width / 5*3, size.height+30.0, size.width, size.height-30.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class ClippingClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height - 50.0);
    path.quadraticBezierTo(
        size.width / 6, size.height, size.width / 5 * 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 5), size.height,
        size.width, size.height - 60.0);
    path.lineTo(size.width, 0.0);
    path.lineTo(0.0, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
