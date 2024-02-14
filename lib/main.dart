
import 'package:flutter/material.dart';
import 'package:islamy/screens/home_screen/home_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {

        HomeScreen.routeName: (_) => HomeScreen(),

      },
      initialRoute: HomeScreen.routeName,
    );
  }
}

