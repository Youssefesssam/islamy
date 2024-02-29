
import 'package:flutter/material.dart';
import 'package:islamy/model/sura_details_arg.dart';
import 'package:islamy/utils/app_assets.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:islamy/utils/app_localization.dart';
import 'package:islamy/utils/constant.dart';
import '../../../../utils/app_theme.dart';
import '../../../sura_detailse/sura_detailse.dart';



class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Expanded(flex:3,child:  Image.asset(AppAssets.quranTabLogo)),
        Expanded(
          flex: 7,
          child: Stack(
            alignment: Alignment.center,
            children: [
              bildScreencontent( context),
              const VerticalDivider(thickness:3,color: AppColors.orange,indent:6 ,)

            ],
          ),
        )
      ],
    );
  }

  Widget bildScreencontent(BuildContext context) {
    return Expanded(
        flex: 7,
        child: Column(
          children: [
            Divider(thickness: 3,color: AppColors.orange,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(context.l10n(context).suraName,style: AppTheme.mediumTitleTextStyle,),
                Text(context.l10n(context).verse,style: AppTheme.mediumTitleTextStyle,)

              ],
            ),
            const Divider(thickness: 3,color: AppColors.orange,),
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
                              style: AppTheme.mediumTitleTextStyle,)),
                            Expanded(child: Text(Constant.suraNames[index],
                              textAlign: TextAlign.center,
                              style: AppTheme.mediumTitleTextStyle,)),
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
