import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_api/bloc/supabase_data/city_bloc.dart';
import 'package:weather_api/components/autoComplate.dart';
import 'package:weather_api/components/day_weather_card.dart';
import 'package:weather_api/components/weather_card.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/extension/dialog.dart';
import 'package:weather_api/icons_map/icons.dart';
import 'package:weather_api/models/weather2.dart';
import 'package:weather_api/screens/home_screen.dart';
import 'package:weather_api/services/supabaseData.dart';

// ignore: must_be_immutable
class WeatherContent extends StatelessWidget {
  WeatherContent({super.key, required this.allData});
  Weather2 allData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kVSpace32,
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: AutoComplate(),
              ),
            ),
            Center(
              child: WeatherCard(
                onTap: () async {
                  final List Cities = await getCities();
                  for (var element in Cities) {
                    if (element["name"].toLowerCase() == city.toLowerCase()) {
                      context.dialogScreenWrong();
                      return;
                    }
                  }
                  context.read<CityBloc>().add(AddCityEvent(city));
                  context.dialogScreenCorrect();
                },
                cityName: allData.location!.name.toString(),
                dgree: allData.current!.tempC.toString(),
                icon: Lottie.asset(
                  '${iconsMap['${allData.current!.condition!.text}']}',
                  width: 100,
                  height: 100,
                ),
                weatherState: allData.current!.condition!.text.toString(),
                windDegree: allData.current!.windDegree.toString(),
                humidity: allData.current!.humidity.toString(),
              ),
            ),
            kVSpace64,
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: allData.forecast!.forecastday!.length,
                itemBuilder: (BuildContext context, int index) {
                  print("Len : ${allData.forecast!.forecastday!.length}");
                  return DayWeatherCard(
                    forecastday: allData.forecast!.forecastday![index],
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
