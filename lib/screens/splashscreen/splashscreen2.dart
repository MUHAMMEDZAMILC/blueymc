import 'package:blueymc/screens/authentication/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class SplashScreen2 extends StatefulWidget {
  SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  List<PageViewModel> pages = [
    PageViewModel(
      title: 'BlueYMC',
      body: 'Start Match Our Club',
      image: Center(
        child: Image.asset(
          'assets/images/logo.png',
          // color: Colors.white,
        ),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.white,
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
      body: 'A little progress each day adds up to big results',
      image: Center(
        child: Image.asset(
          'assets/images/logo.png',
          // color: Colors.white,
        ),
      ),
      decoration: const PageDecoration(
        pageColor: Colors.white,
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
      image: Center(
          child: Image.asset(
        'assets/images/logo.png',
        // color: Colors.white,
      )),
      decoration: const PageDecoration(
        pageColor: Colors.white,
        // fullScreen: true,
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
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 100.0),
        child: IntroductionScreen(
          pages: pages,
          onDone: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
          onSkip: () {},
          showBackButton: false,
          showSkipButton: true,
          skip: const Icon(Icons.skip_next),
          next: const Icon(Icons.arrow_forward),
          done:
              const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
          dotsDecorator: DotsDecorator(
              size: const Size.square(10.0),
              activeSize: const Size(20.0, 10.0),
              activeColor: Colors.white,
              color: Colors.black26,
              spacing: const EdgeInsets.symmetric(horizontal: 3.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0))),
        ),
      ),
    );
  }
}
