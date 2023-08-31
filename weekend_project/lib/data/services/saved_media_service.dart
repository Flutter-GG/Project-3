import 'package:weekend_project/data/services/supabase_initializer.dart';

Future insertHistory(String mediaName) async {
  await SupabaseInitializer().supabaseClient.from('SavedMedia').insert({
    'name_of_ media': mediaName, //////Some changes
  });
}
