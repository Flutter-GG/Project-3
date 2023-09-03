part of 'database_bloc.dart';

abstract class DatabaseBlocEvent {}

class GetCityEvent extends DatabaseBlocEvent {}

class AddCityEvent extends DatabaseBlocEvent {
  final String name;

  AddCityEvent(this.name);
}
