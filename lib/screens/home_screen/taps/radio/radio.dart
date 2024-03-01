import 'package:flutter/material.dart';
import 'package:islamy/screens/app_scaffold/app_scaffold.dart';

class Radioo extends StatelessWidget {
  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppScaffold(
       title: '',
        body: Column(
          children: [
            Image.asset("assets/radioBackGround.png")
          ],
        ),
    );
  }
}
