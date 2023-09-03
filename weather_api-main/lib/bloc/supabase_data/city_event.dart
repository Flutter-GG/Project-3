part of 'city_bloc.dart';

abstract class CityEvent {}

class GetCityEvent extends CityEvent {}

class AddCityEvent extends CityEvent {
  final String cityName;

  AddCityEvent(this.cityName);
}
