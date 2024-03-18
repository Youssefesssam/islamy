import 'package:flutter/material.dart';
import 'package:islamy/screens/ahadeth_details/hadeth_details.dart';
import 'package:islamy/utils/app_assets.dart';
import 'package:islamy/utils/app_localization.dart';
import 'package:provider/provider.dart';
import '../../../../model/sura_details_arg.dart';
import '../../../../provider/theme_provider.dart';
import '../../../../utils/app_colors.dart';


class Ahadeth extends StatefulWidget {

   Ahadeth({super.key});

  @override
  State<Ahadeth> createState() => _AhadethState();
}

class _AhadethState extends State<Ahadeth> {
  late ThemeProvider themeProvider;

  @override
  Widget build(BuildContext context) {
    ThemeProvider  themeProvider = Provider.of(context);
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
    ThemeProvider  themeProvider = Provider.of(context);
    return Expanded(
      flex: 7,
      child: Column(
        children: [
          Divider(thickness: 3,color:themeProvider.tasbeh),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(context.l10n(context).hadeth,style: themeProvider.mediumTitleTextStyle,)

            ],
          ),
           Divider(thickness: 3,color:themeProvider.tasbeh,),
          Expanded(
              flex: 7,
              child: ListView.builder(
                  itemCount: 50,
                  itemBuilder:(context,index){
                    var hadethName = "الحديث رقم ${index +1}";
                    return InkWell(
                      onTap: (){
                        print("ggggg");
                        ScreenDetailsArgs argument =ScreenDetailsArgs(fileName: "h${index+1}.txt", Name: hadethName);
                        Navigator.pushNamed(context, HadethDetails.routeName, arguments: argument );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(child: Text(hadethName,

                            textAlign: TextAlign.center,
                            style: themeProvider.mediumTitleTextStyle)),
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
