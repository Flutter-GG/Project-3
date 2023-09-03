import 'package:flutter/material.dart';
import 'package:weather_api/constants/colors.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key,
      required this.data,
      this.isBlod = false,
      this.size = 13,
      this.textColor,
      this.maxLines = 2});
  final String data;
  final bool isBlod;
  final double size;
  final Color? textColor;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        overflow: TextOverflow.clip,
        fontWeight: isBlod ? FontWeight.bold : FontWeight.normal,
        fontSize: size,
        color: textColor ?? AppColors.primary,
      ),
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
    );
  }
}
