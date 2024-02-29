import 'package:flutter/material.dart';
import 'package:islamy/provider/language_provider.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:provider/provider.dart';
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

  @override
  Widget build(BuildContext context) {
    languageProvider = Provider.of(context);
    return Padding(
        padding: EdgeInsets.all(16.0),
      child:Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
         Text("setting",style:  AppTheme.settingTabTitle,textAlign: TextAlign.start,),
        bildSettingRow("العربيه",arSwitch,(newValue){
          arSwitch =newValue;
          if(arSwitch){
            languageProvider.setCurrentLocal("ar");
          }else{
            languageProvider.setCurrentLocal("en");
          }

          setState(() {});
        }),
        bildSettingRow("dark", darkModeSwitch,(newValue){
          darkModeSwitch =newValue;

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
        Text(title,style: AppTheme.settingOpitionalTitle),
        Spacer(),
        Switch(value: switchValue, onChanged: onChanged,activeColor: AppColors.orange,)

      ],
    );
  }
}
