import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_api/components/text_widget.dart';
import 'package:weather_api/constants/colors.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/extension/navigator.dart';
import 'package:weather_api/icons_map/icons.dart';
import 'package:weather_api/models/weather2.dart';
import 'package:weather_api/screens/city_weather_screen.dart';

// ignore: must_be_immutable
class HistoryCard extends StatelessWidget {
  HistoryCard({super.key, required this.weather2});
  Weather2 weather2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 8, top: 10, bottom: 10),
      child: GestureDetector(
        onTap: () {
          context.push(
              screen: CityWeather(
            weather2: weather2,
          ));
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Color.fromARGB(255, 186, 231, 251),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    kHSpace16,
                    Icon(
                      Icons.location_on,
                      size: 20,
                      color: AppColors.primary,
                    ),
                    Expanded(
                      child: TextWidget(
                        data: weather2.location!.country!,
                        size: 16,
                      ),
                    ),
                    kHSpace8,
                    Expanded(
                      child: TextWidget(
                        data: weather2.location!.name!,
                        size: 16,
                        isBlod: true,
                      ),
                    ),
                    kHSpace8,
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextWidget(
                    data: "${weather2.current!.tempC.toString()} C °",
                    size: 16,
                    isBlod: true,
                  ),
                  kHSpace8,
                  // replace the icon with API data dynamically
                  Lottie.asset(
                    '${iconsMap['${weather2.current!.condition!.text}']}',
                    width: 80,
                    height: 80,
                  ),
                  kHSpace16
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
