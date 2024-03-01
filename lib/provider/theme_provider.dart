import 'package:flutter/material.dart';
import 'package:islamy/utils/app_assets.dart';
import 'package:islamy/utils/app_theme.dart';

import '../utils/app_colors.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentMode =ThemeMode.light;
  toggleTheme (bool darkThemeSwitchValue ){
    currentMode =darkThemeSwitchValue?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
  String get mainBackground=>
      currentMode==ThemeMode.light?AppAssets.background:AppAssets.darkbackground;

  String get splashScreen=>
    currentMode==ThemeMode.light?AppAssets.splashScreen:AppAssets.DarksplashScreen;


  TextStyle get appBarTextStyle =>
      currentMode== ThemeMode.light? AppTheme.appBarTextStyle : AppTheme.appBarDarkTextStyle;

  TextStyle get mediumTitleTextStyle =>
      currentMode== ThemeMode.light? AppTheme.mediumTitleTextStyle : AppTheme.mediumDarkTitleTextStyle;

  TextStyle get regularTitleTextStyle =>
      currentMode== ThemeMode.light? AppTheme.regularTitleTextStyle : AppTheme.regularDarkTitleTextStyle;

  String get sebhaaLogo =>
      currentMode== ThemeMode.light? AppAssets.sebhaaLogo : AppAssets.SebhaDark;

  Color get primarylight =>
      currentMode== ThemeMode.light? AppColors.primarylight : AppColors.primarydark;

  Color get tasbeh =>
      currentMode== ThemeMode.light? AppColors.primarylight : AppColors.secondrydark;

  Color get colorContener =>
      currentMode== ThemeMode.light? AppColors.white : AppColors.primarydark;
  }
