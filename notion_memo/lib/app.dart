import 'package:flutter/material.dart';
import 'package:notion_memo/presentation/pages/splash_page.dart';
import 'package:notion_memo/presentation/pages/settings_page.dart';
import 'package:notion_memo/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notion Memo',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
        '/settings': (context) => const SettingsPage(),
      },
    );
  }
}
