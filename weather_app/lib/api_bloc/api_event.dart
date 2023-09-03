part of 'api_bloc.dart';

@immutable
sealed class ApiEvent {}

class SearchCityEvent extends ApiEvent {
  final String citysApi;

  SearchCityEvent(this.citysApi);
}
