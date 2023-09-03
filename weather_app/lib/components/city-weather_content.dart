import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_api/components/day_weather_card.dart';
import 'package:weather_api/components/weather_card.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/icons_map/icons.dart';
import 'package:weather_api/models/weather2.dart';

// ignore: must_be_immutable
class CityWeatherContent extends StatelessWidget {
  CityWeatherContent({super.key, required this.weather2});
  Weather2 weather2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSpace32,
        Column(
          children: [
            Center(
              child: WeatherCard(
                cityName: weather2.location!.name.toString(),
                dgree: weather2.current!.tempC.toString(),
                icon: Lottie.asset(
                  '${iconsMap['${weather2.current!.condition!.text}']}',
                  width: 100,
                  height: 100,
                ),
                weatherState: weather2.current!.condition!.text.toString(),
                windDegree: weather2.current!.windDegree.toString(),
                humidity: weather2.current!.humidity.toString(),
              ),
            ),
            kVSpace64,
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return DayWeatherCard(
                      forecastday: weather2.forecast!.forecastday![index],
                    );
                  }),
            )
          ],
        ),
      ],
    );
  }
}
