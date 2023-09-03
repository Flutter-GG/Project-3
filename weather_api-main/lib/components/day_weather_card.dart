import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_api/components/text_widget.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:intl/intl.dart';
import 'package:weather_api/icons_map/icons.dart';
import 'package:weather_api/models/weather2.dart';

class DayWeatherCard extends StatelessWidget {
  const DayWeatherCard({
    super.key,
    this.bgColor,
    required this.forecastday,
  });
  final Color? bgColor;
  final Forecastday forecastday;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          TextWidget(
            data: DateFormat('EEEE')
                .format(DateTime.parse((forecastday.date.toString()))),
            size: 16,
          ),
          kVSpace8,
          Container(
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: bgColor ?? Colors.lightBlue.withOpacity(0.5),
                shape: BoxShape.circle),
            child: Lottie.asset(
              iconsMap['${forecastday.day!.condition!.text}'],
              height: 20,
            ),
          ),
          kVSpace8,
          TextWidget(
            data: "${forecastday.day!.avgtempC} C°",
            size: 16,
          ),
        ],
      ),
    );
  }
}
