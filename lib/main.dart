import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islamy/provider/language_provider.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:islamy/screens/ahadeth_details/hadeth_details.dart';
import 'package:islamy/screens/home_screen/home_screen.dart';
import 'package:islamy/screens/home_screen/tabs/sebha/sebha.dart';
import 'package:islamy/screens/home_screen/tabs/setting/setting.dart';
import 'package:islamy/screens/splash_screen/splash_screen.dart';
import 'package:islamy/screens/sura_detailse/sura_detailse.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/utils/app_theme.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(ChangeNotifierProvider(
    create: (_)=>ThemeProvider(),
    child: ChangeNotifierProvider(
        create:(_) => LanguageProvider(),
       child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LanguageProvider languageProvider =Provider.of(context);
    ThemeProvider themeProvider =Provider.of(context);

    return MaterialApp(

      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme:AppTheme.lightTheme ,
      darkTheme:AppTheme.DarkTheme ,
      themeMode: themeProvider.currentMode ,
      supportedLocales: const [Locale("en"),Locale("ar")] ,
      locale: Locale(languageProvider.currentLocal),
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
        Sebha.routeName: (_) => const Sebha(),
        SuraDetailse.routeName:(_)=>SuraDetailse(),
        SettingTab.routename:(_)=>SettingTab(),
        HadethDetails.routeName:(_)=>  const HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }

}

