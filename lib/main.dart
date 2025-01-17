import 'package:fl_damfix/providers/movies_provider.dart';
import 'package:fl_damfix/screens/screens.dart';
import 'package:fl_damfix/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MoviesProvider(),
          lazy: false,
        ),
      ],
      child: const MyApp(),
    );
  }
}

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
      },
      theme: AppTheme.lightTheme,
    );
  }
}
