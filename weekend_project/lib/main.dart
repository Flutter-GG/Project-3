import 'package:flutter/material.dart';
import 'package:weekend_project/services/supabase_initializer.dart';

void main() {
  SupabaseInitializer.supabaseInitialize();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

    );
  }
}
