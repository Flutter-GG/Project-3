part of 'weather_data_bloc.dart';

abstract class WeatherDataEvent {}

class GetWeatherDataEvent extends WeatherDataEvent {}

class SearchWeatherDataEvent extends WeatherDataEvent {
  String cityName;

  SearchWeatherDataEvent(this.cityName);
}
