import 'package:animated_splash_screen/animated_splash_screen.dart';
import "package:flutter/material.dart";
import 'package:medory/main.dart';
import 'package:medory/routes/termsandcondition.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  Future<void> waitAndPushRoute(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return const TermsAndConditionRoute();
    }));
  }

  @override
  Widget build(context) {
    waitAndPushRoute(context);
    return AnimatedSplashScreen(
        duration: 1500,
        splash: Container(
          width: 236,
          height: 635,
          color: Colors.white,
          child: Center(
            child: Image.asset('assets/images/medory_logo.png'),
          ),
        ),
        nextScreen: const MyHomePage(
          title: "Medory",
        ));
  }
}
