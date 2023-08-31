import 'package:flutter/material.dart';
import 'package:weekend_project/ui/screens/home_screen.dart';
import 'package:weekend_project/data/services/supabase_initializer.dart';

void main() {
  SupabaseInitializer.supabaseInitialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
