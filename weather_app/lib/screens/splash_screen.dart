import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:weather_api/components/splash_logo.dart';
import 'package:weather_api/constants/colors.dart';
import 'package:weather_api/screens/navigation_bar_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: AnimatedSplashScreen(
      duration: 950,
      splash: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: const SplashLogo(),
      ),
      nextScreen: const NavigationBarPage(),
      splashTransition: SplashTransition.scaleTransition,
      backgroundColor: AppColors.blue.withOpacity(0.6),
      splashIconSize: 350,
    )));
  }
}
