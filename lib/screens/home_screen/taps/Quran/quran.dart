import 'package:flutter/material.dart';
import 'package:islamy/utils/app_assets.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:islamy/utils/constant.dart';

import '../../../../utils/app_theme.dart';

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
              bildScreencontent(),
              const VerticalDivider(thickness:3,color: AppColors.orange,indent:6 ,)

            ],
          ),
        )



      ],
    );
  }

  Widget bildScreencontent() {
    return Expanded(
        flex: 7,
        child: Column(
          children: [
            Divider(thickness: 3,color: AppColors.orange,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Verses",style: AppTheme.mediumTitleTextStyle,),
                Text("sura name",style: AppTheme.mediumTitleTextStyle,)

              ],
            ),
            const Divider(thickness: 3,color: AppColors.orange,),
            Expanded(
                flex: 7,
                child: ListView.builder(
                    itemCount: Constant.suraNames.length,
                    itemBuilder:(context,index){
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Text("${Constant.versesNumber[index]}",
                            textAlign: TextAlign.center,
                            style: AppTheme.mediumTitleTextStyle,)),
                          Expanded(child: Text(Constant.suraNames[index],
                            textAlign: TextAlign.center,
                            style: AppTheme.mediumTitleTextStyle,)),
                        ],
                      );
                    }
                )
            )
          ],
        ),
      );
  }
}
