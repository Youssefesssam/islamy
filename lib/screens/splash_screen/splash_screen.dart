import 'package:flutter/material.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import '../../utils/app_assets.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "Splash screen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });

  }

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of(context);
    return Scaffold(
      body: Image.asset(themeProvider.splashScreen),
    );
  }
}
