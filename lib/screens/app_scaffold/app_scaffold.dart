import 'package:flutter/material.dart';
import 'package:islamy/provider/theme_provider.dart';
import 'package:provider/provider.dart';
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
    ThemeProvider themeProvider = Provider.of(context);
    return Container(
      decoration:  BoxDecoration(
          image: DecorationImage(
              image: AssetImage(themeProvider.mainBackground)
          ),
          ),

      child:  Scaffold(
        backgroundColor:AppColors.transparent ,
        appBar: AppBar(
          backgroundColor: AppColors.transparent,
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