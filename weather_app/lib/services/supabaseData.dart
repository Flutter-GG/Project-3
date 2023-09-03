import 'package:supabase_flutter/supabase_flutter.dart';

supabaseConfig() async {
  await Supabase.initialize(
    url: 'https://uqkddfmaunculouryejc.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InVxa2RkZm1hdW5jdWxvdXJ5ZWpjIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTMzOTAzMDEsImV4cCI6MjAwODk2NjMwMX0.A33R88mYvBqkeqo_uHIC9MXzJJzxORVH0Dm4Gl2qSEg',
  );
}

Future getCities() async {
  final List citiesList = await Supabase.instance.client.from('city').select();
  print("All : $citiesList");
  return citiesList;
}

Future addCity(String city) async {
  await Supabase.instance.client.from('city').insert({"name": city});
}
