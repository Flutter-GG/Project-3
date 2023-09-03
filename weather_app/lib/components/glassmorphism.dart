import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_api/extension/screen_size.dart';

class Glassmorphism extends StatelessWidget {
  const Glassmorphism(
      {super.key,
      required this.child,
      this.width,
      this.height,
      this.containerColor,
      this.borderColor});

  final Widget child;
  final double? width;
  final double? height;
  final Color? containerColor;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Container(
          width: width ?? context.getWidth,
          height: height ?? context.getHeight,
          decoration: BoxDecoration(
            color: containerColor ?? Colors.white.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(
              width: 1.5,
              color: borderColor ?? Colors.white.withOpacity(0.2),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
