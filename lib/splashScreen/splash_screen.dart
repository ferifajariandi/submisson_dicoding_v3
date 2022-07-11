import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:submission_dicoding/homepage/homepage.dart';
import 'package:submission_dicoding/screen/onboarding/onboarding_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSplashScreen(splash: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Image.asset("assets/images/logos.png",
                  width: MediaQuery.of(context).size.width),
              ),
            ),
            Spacer(),
            SpinKitCircle(
              color: Colors.blue,
              size: 120,
            )
          ],
        ),
          backgroundColor: Colors.white,
          duration: 4000,
          splashTransition: SplashTransition.fadeTransition,
          nextScreen: OnboardingScreen(Homepage(),),
          splashIconSize: MediaQuery.of(context).size.width,)
      ],

    );
  }
}
