import 'package:blueymc/common/textstyle.dart';
import 'package:flutter/material.dart';

class MyClipPath extends StatelessWidget {
  final Color backgroundColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Color(0xFFFF3815),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(2, 7), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text("Login",
                    style: mainhead,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipPath2 extends StatelessWidget {
  final Color backgroundColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomWaveClipper(),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: BoxDecoration(
          color: Color(0xFFFF3815),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.8),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(2, 7), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/images/logo.png',
                height: 200,
                width: 200,
                color: Colors.white,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Text("Register",
                    style: mainhead,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
