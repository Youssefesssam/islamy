import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLocal="en";
  SharedPreferences?sharedPreferences;

  Future<void> setItem()async{
    sharedPreferences =await SharedPreferences.getInstance();
    if(getlang??false){
      currentLocal='ar';
    }else
    {
      currentLocal='en';
    }
  }

  void setCurrentLocal(String newLocal){
    if(newLocal==currentLocal)
      {
        return;
      }
    currentLocal=newLocal;
    if(currentLocal=='ar'){
      savelang(true);
    }else{
      savelang(false);
    }
    notifyListeners();
  }

  Future<void> savelang(bool isArabic) async{
    await sharedPreferences!.setBool("isArabic",isArabic );
  }
  bool? get getlang =>
      sharedPreferences!.getBool("isArabic");
}
