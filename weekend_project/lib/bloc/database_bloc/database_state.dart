part of 'database_bloc.dart';

abstract class DatabaseState {}

final class DatabaseInitial extends DatabaseState {}

final class GetMediasSuccessedState extends DatabaseState {
  final List medias;
  GetMediasSuccessedState(this.medias);
}

final class SavedMediasSuccessedState extends DatabaseState {}

final class FailedState extends DatabaseState {}

final class LoadingState extends DatabaseState {}
