part of 'api_bloc.dart';

@immutable
sealed class ApiState {}

final class ApiInitial extends ApiState {}

final class SearchApiCityState extends ApiState {
  final Weather weather;

  SearchApiCityState(this.weather);
}


final class GetCityFaildState extends ApiState {}

final class GetCityLoadingState extends ApiState {}
