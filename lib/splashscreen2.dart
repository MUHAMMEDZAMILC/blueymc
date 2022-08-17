import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'BlueYMC',
      body: 'Start Match Our Club',
      image: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
    PageViewModel(
      title: 'BlueYMC',
      body: 'A little progress each day adds up to big results',
      image: Center(
        child: Image.asset('assets/images/logo.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
    PageViewModel(
      title: 'BlueYMC',
      body: 'MAtch details',
      image: Center(child: Image.asset('assets/images/logo.png')),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyTextStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold();
  }

  