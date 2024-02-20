
import 'package:flutter/material.dart';
import 'package:islamy/screens/home_screen/home_screen.dart';
import 'package:islamy/screens/home_screen/taps/sebha/sebha.dart';
import 'package:islamy/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        Sebha.routeName: (_) => Sebha(),

      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

