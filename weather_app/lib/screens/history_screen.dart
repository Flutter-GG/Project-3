import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/components/glassmorphism.dart';
import 'package:weather_api/components/history_card.dart';
import 'package:weather_api/components/loading_animated_widget.dart';
import 'package:weather_api/extension/screen_size.dart';
import 'package:weather_api/models/weather2.dart';
import 'package:weather_api/bloc/supabase_data/city_bloc.dart';
import 'package:weather_api/services/api.dart';

class History extends StatelessWidget {
  const History({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<CityBloc>().add(GetCityEvent());
    return Scaffold(
      body: BlocBuilder<CityBloc, CityState>(builder: (context, state) {
        if (state is LoadinCitygState) {
          return const Center(child: LoadingAnimatedWidget());
        }
        if (state is GetCitiesSuccessedState) {
          return ListView(
            padding: EdgeInsets.zero,
            children: [
              Stack(
                children: [
                  Image.asset(
                    'assets/bg/bgDay.jpg',
                    width: context.getWidth,
                    height: context.getHeight,
                    fit: BoxFit.cover,
                  ),
                  Glassmorphism(
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: state.Cities.length,
                      itemBuilder: (BuildContext context, int index) {
                        final city = state.Cities[index];
                        return FutureBuilder(
                            future: GetApi2().getWeather2(city["name"]),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                final Weather2 weather2 = snapshot.data!;
                                return HistoryCard(
                                  weather2: weather2,
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            });
                      },
                    ),
                  ),
                ],
              ),
            ],
          );
        } else {
          return const Text("ERROR !!");
        }
      }),
    );
  }
}
