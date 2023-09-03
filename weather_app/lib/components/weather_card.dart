import 'package:flutter/material.dart';
import 'package:weather_api/components/glassmorphism.dart';
import 'package:weather_api/components/text_widget.dart';
import 'package:weather_api/constants/colors.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/extension/screen_size.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard(
      {super.key,
      required this.cityName,
      required this.dgree,
      required this.icon,
      required this.weatherState,
      this.addingIcon = true,
      required this.windDegree,
      required this.humidity,
      this.onTap});
  final String cityName;
  final String dgree;
  final Widget icon;
  final String weatherState;
  final bool addingIcon;
  final String windDegree;
  final String humidity;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      containerColor: Colors.white.withOpacity(0.6),
      width: context.getWidth - 100,
      height: context.getHeight / 2 - 70,
      child: Column(children: [
        // kVSpace8,
        addingIcon
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: onTap,
                    child: Icon(
                      Icons.add,
                      color: AppColors.primary,
                      size: 32,
                    ),
                  ),
                  kHSpace16,
                ],
              )
            : kVSpace8,
        TextWidget(
          data: cityName,
          size: 24,
          isBlod: true,
        ),
        kVSpace8,
        const TextWidget(
          data: 'Today',
          size: 22,
        ),
        kVSpace8,
        icon,
        kVSpace16,
        TextWidget(
          data: weatherState,
          size: 24,
        ),
        kVSpace8,
        TextWidget(
          data: "$dgree C°",
          size: 22,
        ),
        kVSpace16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextWidget(
              data: 'wind degree: $windDegree',
              size: 15,
            ),
            TextWidget(
              data: 'humidity: $humidity',
              size: 15,
            ),
          ],
        )
      ]),
    );
  }
}
