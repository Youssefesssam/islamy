import 'package:flutter/material.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.title, required this.body,  this.bottomNavigationBar});
  final String title;
  final Widget body;
  final Widget ? bottomNavigationBar ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.background)
          )
      ),
      child:  Scaffold(
        backgroundColor:AppColors.transparent ,
        appBar: AppBar(
          title:  Text(
            title,
        ),
        ),
        bottomNavigationBar: bottomNavigationBar,
        body: body,

      ),
    );
  }
}