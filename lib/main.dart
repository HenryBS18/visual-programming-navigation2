import 'package:flutter/material.dart';
import 'package:navigation_management/pages/main_page.dart';
import 'package:navigation_management/pages/home.dart';
import 'package:navigation_management/pages/profile.dart';
import 'package:navigation_management/pages/form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MainPage(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/form': (context) => const FormPage(),
      },
    );
  }
}
