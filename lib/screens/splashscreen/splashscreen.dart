import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/screens/splashscreen/splashscreen2.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // gotoSplash2();
    // TODO: implement initState
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 11,
            child: AnimatedSplashScreen(
              duration: 2000,
              splashIconSize: 200,
              splash: 'assets/images/logo.png',
              nextScreen: SplashScreen2(),
              splashTransition: SplashTransition.fadeTransition,
              // pageTransitionType: PageTransitionType.scale,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
