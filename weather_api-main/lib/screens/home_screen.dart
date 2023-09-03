import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/bloc/weather_data/weather_data_bloc.dart';
import 'package:weather_api/components/glassmorphism.dart';
import 'package:weather_api/components/loading_animated_widget.dart';
import 'package:weather_api/components/weather_content.dart';
import 'package:weather_api/constants/spaces.dart';
import 'package:weather_api/extension/screen_size.dart';
import 'package:weather_api/models/weather2.dart';

String city = 'Riyadh';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Weather2 allData;
    context.read<WeatherDataBloc>().add(GetWeatherDataEvent());
    return Scaffold(
      body: BlocBuilder<WeatherDataBloc, WeatherDataState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(child: LoadingAnimatedWidget());
          }
          if (state is GetWeatherDataSuccessedState) {
            allData = state.data;
            print("Data:\n ${allData.forecast!.forecastday!.length}");
            return ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      allData.current!.isDay == 1
                          ? 'assets/bg/bgDay.jpg'
                          : 'assets/bg/bgNight.jpg',
                      width: context.getWidth,
                      height: context.getHeight,
                      fit: BoxFit.cover,
                    ),
                    kVSpace64,
                    Positioned(
                      top: 32,
                      right: 22,
                      left: 20,
                      bottom: 70,
                      child: Glassmorphism(
                        child: WeatherContent(allData: allData),
                      ),
                    ),
                  ],
                ),
              ],
            );
          } else if (state is SearchWeatherDataSuccessedState) {
            context.read<WeatherDataBloc>().add(GetWeatherDataEvent());
          }
          if (state is FailedState) {
            print(state);
            return const Text("ERROR !!");
          }
          return const Text("ERROR !!");
        },
      ),
    );
  }
}
