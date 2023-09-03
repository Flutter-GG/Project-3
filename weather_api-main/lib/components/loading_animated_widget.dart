import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:weather_api/constants/colors.dart';

class LoadingAnimatedWidget extends StatelessWidget {
  const LoadingAnimatedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.twistingDots(
        leftDotColor: AppColors.primary,
        rightDotColor: AppColors.light,
        size: 80,
      ),
    );
  }
}
