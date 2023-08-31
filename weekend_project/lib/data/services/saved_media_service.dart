<<<<<<< HEAD:weekend_project/lib/services/saved_media_service.dart
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:weekend_project/services/supabase_initializer.dart';
=======
import 'package:weekend_project/data/services/supabase_initializer.dart';
>>>>>>> BLoC:weekend_project/lib/data/services/saved_media_service.dart

Future getMedias() async {
  final mediaList =
      await Supabase.instance.client.from('SavedMedia').select('*');

  return mediaList;
}

Future insertMovie(
  String mediaTitle,
  double voteAverage,
  String backdropPath,
  String posterPath,
  String overview,
  String mediaType,
  String releaseDate,
) async {
  await SupabaseInitializer().supabaseClient.from('SavedMedia').insert({
    'title': mediaTitle,
    'voteAverage': voteAverage,
    'backdropPath': backdropPath,
    'posterPath': overview,
    'overview': overview,
    'mediaType': mediaType,
    'releaseDate': releaseDate,
  });
}
