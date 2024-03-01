
import 'package:flutter/material.dart';
import 'package:islamy/model/sura_details_arg.dart';
import 'package:islamy/utils/app_assets.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:islamy/utils/app_localization.dart';
import 'package:islamy/utils/constant.dart';
import 'package:provider/provider.dart';
import '../../../../provider/theme_provider.dart';
import '../../../sura_detailse/sura_detailse.dart';



class Quran extends StatefulWidget {
   Quran({super.key});

  @override
  State<Quran> createState() => _QuranState();

}

class _QuranState extends State<Quran> {


  @override
  Widget build(BuildContext context) {

    ThemeProvider  themeProvider = Provider.of(context);
    return Column(
      children: [
        Expanded(flex:3,child:  Image.asset(AppAssets.quranTabLogo)),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              bildScreencontent(context),
               VerticalDivider(thickness:3,color: themeProvider.tasbeh,indent:7 ,)

            ],
          ),
        )
      ],
    );
  }

  Widget bildScreencontent(BuildContext context) {
    ThemeProvider  themeProvider = Provider.of(context);
    return Expanded(
        flex: 7,
        child: Column(
          children: [
            Divider(thickness: 3,color: themeProvider.tasbeh,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(context.l10n(context).suraName,style: themeProvider.mediumTitleTextStyle),
                Text(context.l10n(context).verse,style: themeProvider.mediumTitleTextStyle)
              ],
            ),
             Divider(thickness: 3,color:themeProvider.tasbeh,),
            Expanded(
                flex: 7,
                child: ListView.builder(
                    itemCount: Constant.suraNames.length,
                    itemBuilder:(context,index){
                      return InkWell(
                        onTap: (){
                          ScreenDetailsArgs argument =ScreenDetailsArgs(
                            fileName: "${index+1}.txt",
                            Name: Constant.suraNames[index],);

                          Navigator.pushNamed(context,SuraDetailse.routeName, arguments: argument );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(child: Text("${Constant.versesNumber[index]}",
                              textAlign: TextAlign.center,
                              style:  themeProvider.mediumTitleTextStyle)),
                            Expanded(child: Text(Constant.suraNames[index],
                              textAlign: TextAlign.center,
                              style:  themeProvider.mediumTitleTextStyle)),
                          ],
                        ),
                      );
                    }
                )
            )
          ],
        ),
      );
  }
}
