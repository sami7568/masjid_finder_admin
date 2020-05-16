import 'package:flutter/material.dart';

import 'package:masjid_finder/constants/colors.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFF00A2E4),
          ),
          ClipPath(
            clipper: MyClipper(),
            child: Container(
              color: Color(0xFF00AFEF),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/static_assets/white-logo.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    // path.lineTo(0, size.height - 80);
    // path.quadraticBezierTo(
    //     size.width / 2, size.height, size.width, size.height - 80);
    // path.lineTo(size.width, 0);
    // path.close();
    path.moveTo(size.width, 40);
    // path.lineTo(0, 0);
    // path.lineTo(0, size.height/2);
    path.quadraticBezierTo(0, size.height / 3, size.width / 5, size.height);
    path.lineTo(size.width / 5, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
