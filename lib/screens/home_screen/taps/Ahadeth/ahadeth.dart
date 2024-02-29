import 'package:flutter/material.dart';
import 'package:islamy/screens/ahadeth_details/hadeth_details.dart';
import 'package:islamy/utils/app_assets.dart';

import '../../../../model/sura_details_arg.dart';
import '../../../../utils/app_colors.dart';
import '../../../../utils/app_theme.dart';



class Ahadeth extends StatelessWidget {
  const Ahadeth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Expanded(flex:3,child:  Image.asset(AppAssets.ahadethTabLogo)),
        Expanded(
          flex: 7,
          child: bildScreencontent(),
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
              Text("Hadeth name",style: AppTheme.mediumTitleTextStyle,)

            ],
          ),
          const Divider(thickness: 3,color: AppColors.orange,),
          Expanded(
              flex: 7,
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder:(context,index){
                    var hadethName = "الحديث رقم ${index +1}";
                    return InkWell(
                      onTap: (){
                        ScreenDetailsArgs argument =ScreenDetailsArgs(fileName: "h${index+1}.txt", Name: hadethName);
                        Navigator.pushNamed(context, hadethDetailse.routeName, arguments: argument );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Text(hadethName,

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
