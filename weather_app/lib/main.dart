import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_api/bloc/supabase_data/city_bloc.dart';
import 'package:weather_api/bloc/weather_data/weather_data_bloc.dart';
import 'package:weather_api/screens/splash_screen.dart';
import 'package:weather_api/services/supabaseData.dart';

void main() {
  supabaseConfig();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WeatherDataBloc()),
        BlocProvider(create: (_) => CityBloc()),
      ],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: SplashPage()),
    );
  }
}
