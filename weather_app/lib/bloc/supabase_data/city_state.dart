part of 'city_bloc.dart';

abstract class CityState {}

final class CityInitial extends CityState {}

final class GetCitiesSuccessedState extends CityState {
  final List Cities;

  GetCitiesSuccessedState(this.Cities);
}

final class AddCitytSuccessedState extends CityState {}

final class FailedCityState extends CityState {}

final class LoadinCitygState extends CityState {}
