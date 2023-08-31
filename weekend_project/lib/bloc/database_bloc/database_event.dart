part of 'database_bloc.dart';

abstract class DatabaseEvent {}

class GetMediasEvent extends DatabaseEvent {}

class SaveMediasEvent extends DatabaseEvent {
  final String mediaTitle;
  final double voteAverage;
  final String backdropPath;
  final String posterPath;
  final String overview;
  final String mediaType;
  final String releaseDate;

  SaveMediasEvent(this.mediaTitle, this.voteAverage, this.backdropPath,
      this.posterPath, this.overview, this.mediaType, this.releaseDate);
}
