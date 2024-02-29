import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier{
  String currentLocal="en";

  void setCurrentLocal(String newLocal){
    currentLocal=newLocal;
    notifyListeners();
  }
}