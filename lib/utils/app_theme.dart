import 'package:flutter/material.dart';
import 'app_colors.dart';
abstract class AppTheme{
  static const TextStyle appBarTextStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.secondry
  );
  static const TextStyle mediumTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.secondry
  );
  static const TextStyle regularTitleTextStyle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400,
      color: AppColors.secondry
  );

  static  TextStyle appBarDarkTextStyle = appBarTextStyle.copyWith(color:AppColors.white);
  static  TextStyle mediumDarkTitleTextStyle = mediumTitleTextStyle.copyWith(color: AppColors.white);
  static  TextStyle regularDarkTitleTextStyle = regularTitleTextStyle.copyWith(color: AppColors.white);

  static const TextStyle settingTabTitle = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: AppColors.secondry
  );

  static const TextStyle settingOpitionalTitle = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.normal,
      color: AppColors.secondry
  );

  static  ThemeData lightTheme = ThemeData(
  primaryColor: AppColors.primarylight,
  scaffoldBackgroundColor: AppColors.transparent,
  appBarTheme: const AppBarTheme(
    centerTitle:true,
    elevation: 0,
    titleTextStyle: appBarTextStyle,
  ),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primarylight ,
          onPrimary: AppColors.onprimarylight,
          secondary:AppColors.secondry ,
          onSecondary: AppColors.onsecondry,
          error: AppColors.erorrcColor,
          onError:AppColors.erorrcColor ,
          background:AppColors.transparent ,
          onBackground:AppColors.transparent ,
          surface:AppColors.transparent ,
          onSurface: AppColors.transparent,
      ),
    bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.secondry,
      selectedIconTheme: IconThemeData(size: 36),
        unselectedItemColor:AppColors.white,
        unselectedIconTheme:IconThemeData(size: 34)
    )
    );



  static  ThemeData DarkTheme = ThemeData(
        primaryColor: AppColors.primarydark,
        scaffoldBackgroundColor: AppColors.transparent,
        appBarTheme: const AppBarTheme(
          centerTitle:true,
          elevation: 0,
          titleTextStyle: appBarTextStyle,
        ),
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.primarydark,
          onPrimary: AppColors.onprimarydark,
          secondary:AppColors.secondrydark ,
          onSecondary: AppColors.onsecondrydark,
          error: AppColors.erorrcColor,
          onError:AppColors.erorrcColor ,
          background:AppColors.transparent ,
          onBackground:AppColors.transparent ,
          surface:AppColors.transparent ,
          onSurface: AppColors.transparent,
        ),
         bottomNavigationBarTheme:  const BottomNavigationBarThemeData(
         selectedItemColor: AppColors.secondrydark,
         selectedIconTheme: IconThemeData(size: 36),
         unselectedItemColor:AppColors.white,
         unselectedIconTheme:IconThemeData(size: 34)
      ));

  }
