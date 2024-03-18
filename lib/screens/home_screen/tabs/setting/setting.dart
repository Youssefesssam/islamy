import 'package:flutter/material.dart';
import 'package:islamy/provider/language_provider.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:islamy/utils/app_localization.dart';
import 'package:provider/provider.dart';
import '../../../../provider/theme_provider.dart';
import '../../../../utils/app_theme.dart';

class SettingTab extends StatefulWidget {
static const String  routename="SettingTab";

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
bool arSwitch =false;
bool darkModeSwitch =false;
late LanguageProvider languageProvider =Provider.of(context);
late ThemeProvider themeProvider =Provider.of(context);

  @override
  Widget build(BuildContext context) {
    languageProvider = Provider.of(context);
    themeProvider = Provider.of(context);
    return Padding(
        padding: EdgeInsets.all(16.0),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          Text(context.l10n(context).setting,style: themeProvider.mediumTitleTextStyle,textAlign: TextAlign.start,),
        bildSettingRow("العربيه",arSwitch,(newValue){
          arSwitch =newValue;
          if(arSwitch){
            languageProvider.setCurrentLocal("ar");
          }else{
            languageProvider.setCurrentLocal("en");
          }

          setState(() {});
        }),
        bildSettingRow(context.l10n(context).darkMode, themeProvider.currentMode==ThemeMode.dark,(newValue){
          themeProvider.toggleTheme(newValue);
          activeColor: AppColors.secondrydark;
          setState(() {});
        }),
      ],
    ) ,
    );

  }

  Widget bildSettingRow(String title,bool switchValue,Function(bool)onChanged){
    return Row(
      children: [
        SizedBox(width: 12,),
        Text(title,style:themeProvider.mediumTitleTextStyle),
        Spacer(),
        Switch(value: switchValue, onChanged: onChanged,)

      ],
    );
  }
}
