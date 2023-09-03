part of 'weather_data_bloc.dart';

abstract class WeatherDataState {}

final class WeatherDataInitial extends WeatherDataState {}

final class GetWeatherDataSuccessedState extends WeatherDataState {
  final Weather2 data;

  GetWeatherDataSuccessedState(this.data);
}

final class SearchWeatherDataSuccessedState extends WeatherDataState {
  // final Weather2 data;

  // SearchWeatherDataSuccessedState(this.data);
}

final class FailedState extends WeatherDataState {}

final class LoadingState extends WeatherDataState {}
