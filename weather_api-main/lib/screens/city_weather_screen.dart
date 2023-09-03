import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/bloc/weather_data/weather_data_bloc.dart';
import 'package:weather_api/components/city-weather_content.dart';
import 'package:weather_api/components/glassmorphism.dart';
import 'package:weather_api/components/loading_animated_widget.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/extension/screen_size.dart';
import 'package:weather_api/models/weather2.dart';

// ignore: must_be_immutable
class CityWeather extends StatelessWidget {
  CityWeather({super.key, required this.weather2});
  Weather2 weather2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherDataBloc, WeatherDataState>(
          builder: (context, state) {
        if (state is LoadingState) {
          return const Center(child: LoadingAnimatedWidget());
        }
        if (state is GetWeatherDataSuccessedState) {
          return ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Image.asset(
                    weather2.current!.isDay == 1
                        ? 'assets/bg/bgDay.jpg'
                        : 'assets/bg/bgNight.jpg',
                    width: context.getWidth,
                    height: context.getHeight,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 30,
                    top: 40,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: const Icon(
                        Icons.arrow_circle_left_outlined,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ),
                  kVSpace64,
                  Positioned(
                    top: 100,
                    right: 22,
                    left: 20,
                    bottom: 100,
                    child: Glassmorphism(
                      child: CityWeatherContent(
                        weather2: weather2,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return const Text("ERROR !!");
        }
      }), // Message which will be pop up on the screen
      // Action widget which will provide the user to acknowledge the choice
    );
  }
}
