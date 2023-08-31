import 'package:weekend_project/services/supabase_initializer.dart';

Future insertHistory(String mediaName) async {
  await SupabaseInitializer().supabaseClient.from('SavedMedia').insert({
    'name_of_ media': mediaName, //////Some changes
  });
}
