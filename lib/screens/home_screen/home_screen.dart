import 'package:flutter/material.dart';
import 'package:islamy/screens/home_screen/taps/Ahadeth/ahadeth.dart';
import 'package:islamy/screens/home_screen/taps/Quran/quran.dart';
import 'package:islamy/screens/home_screen/taps/sebha/sebha.dart';
import 'package:islamy/screens/home_screen/taps/radio/radio.dart';
import 'package:islamy/screens/home_screen/taps/setting/setting.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_localization.dart';
import '../../utils/app_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home screen";
   HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int currentTapIndex = 0;
  List <Widget> screen =[Quran(),Ahadeth(),Sebha(),Radioo(),SettingTab()];
  Widget currentTab =Quran();
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
        appBar: buildAppBar(),
        bottomNavigationBar: bildBottomNavigation(),
        body: currentTab,

      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title:  Text(context.l10n(context).islami,
          style: AppTheme.appBarTextStyle,),
        backgroundColor:AppColors.transparent ,
        elevation: 0,
        centerTitle: true,
      );

  }


  Widget bildBottomNavigation()=> Theme(
      data: ThemeData(canvasColor: AppColors.orange),
      child: BottomNavigationBar(
       items: [
      bottomNavigationBarItem(AppAssets.icQuran,context.l10n(context).quran),
      bottomNavigationBarItem(AppAssets.icAhadeth,context.l10n(context).ahadeth),
      bottomNavigationBarItem(AppAssets.icSebha,context.l10n(context).sebha),
      bottomNavigationBarItem(AppAssets.icRadio,context.l10n(context).sebha),
      BottomNavigationBarItem(icon:Icon(Icons.settings,size:30),label: context.l10n(context).setting )
    ],
        selectedItemColor:AppColors.lightBlack ,
        currentIndex: currentTapIndex,
        onTap:(index){
           currentTapIndex=index;
            currentTab = screen[currentTapIndex];
      setState((){});
      } ,
      )
  );
  BottomNavigationBarItem bottomNavigationBarItem(
      String imagepath,String text
      ) => BottomNavigationBarItem(icon:ImageIcon(AssetImage(imagepath),size:40 ,) ,label: text);

}


