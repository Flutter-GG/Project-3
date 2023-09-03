import 'package:animated_rotating_widget/animated_rotating_widget.dart';
import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 350,
        ),
        Positioned(
          right: 45,
          top: 80,
          child: AnimatedRotatingWidget(
            duration: const Duration(milliseconds: 1500),
            child: Image.asset(
              'assets/logo/Picture1.png',
              width: 130,
              height: 130,
            ),
          ),
        ),
        Positioned(
          right: 43,
          top: 100,
          child: Image.asset(
            'assets/logo/Picture2.png',
            width: 270,
          ),
        )
      ],
    );
  }
}
