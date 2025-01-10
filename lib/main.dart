import 'package:fl_damfix/screens/details_screen.dart';
import 'package:fl_damfix/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DAMFLIX',
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomeScreen(),
          'details': (context) => const DetailsScreen(),
        });
  }
}
