import 'package:bloc/bloc.dart';
import 'package:weekend_project/services/saved_media_service.dart';
part 'database_event.dart';
part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc() : super(DatabaseInitial()) {
    on<GetMediasEvent>((event, emit) async {
      emit(LoadingState());
      try {
        final List medias = await getMedias();
        emit(GetMediasSuccessedState(medias));
      } catch (e) {
        emit(FailedState());
      }
    });

    on<SaveMediasEvent>((event, emit) async {
      emit(LoadingState());
      try {
        await insertMovie(
            event.mediaTitle,
            event.voteAverage,
            event.backdropPath,
            event.posterPath,
            event.overview,
            event.mediaType,
            event.releaseDate);
        emit(SavedMediasSuccessedState());
      } catch (e) {
        emit(FailedState());
      }
    });
  }
}
