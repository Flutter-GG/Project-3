part of 'database_bloc.dart';

abstract class DatabaseBlocState {}

final class ApiBlocInitial extends DatabaseBlocState {}

final class GetSucceedCityState extends DatabaseBlocState {
  final List Citys;

  GetSucceedCityState(this.Citys);
}

final class GetFaildCityState extends DatabaseBlocState {}

final class GetLoadingCityState extends DatabaseBlocState {}

final class AddCityState extends DatabaseBlocState {}
