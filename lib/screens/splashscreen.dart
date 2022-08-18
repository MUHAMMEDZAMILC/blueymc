import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blueymc/screens/splashscreen2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 3000,
      splashIconSize: 200,
      splash: 'assets/images/logo.png',
      nextScreen: SplashScreen2(),
      splashTransition: SplashTransition.fadeTransition,
      // pageTransitionType: PageTransitionType.scale,
    );
  }
}
