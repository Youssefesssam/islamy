import 'package:flutter/material.dart';
import 'package:islamy/utils/app_colors.dart';
import 'package:islamy/utils/app_localization.dart';
import 'package:provider/provider.dart';
import '../../../../provider/theme_provider.dart';
import '../../../../utils/app_assets.dart';

class Sebha extends StatefulWidget {
  static const String routeName = "sebha";
  const Sebha({super.key});
  @override
  State<Sebha> createState() => _SebhaState();
}
 class _SebhaState extends State<Sebha> {
  int counter=0;
  int count =0;
  int i=0;
  List <String> azckar=["سبحان الله","الحمدلله","لا الله الا الله","الله اكبر"];
  double turns=0.0;
  @override
  Widget build(BuildContext context) {
    late ThemeProvider themeProvider =Provider.of(context);
    return Column(
        children: [
          GestureDetector(
            onTap: (){
              setState(() {
                Change();
                print("counter${counter}");
                print("count${count}");
              });
            },
            child: Column(
              children: [
                AnimatedRotation(turns: turns, duration: const Duration(milliseconds:1 ),
                  child: Image.asset(themeProvider.sebhaaLogo),),
              ],
            ),
          ),
          Expanded(

            child: Column(
                children: [
                  SizedBox(height: 10,),
                   Text(context.l10n(context).number_of_praises,
                    style: TextStyle(fontSize: 40,fontWeight: FontWeight.normal),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.center,
                    height:100,
                    width:80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: themeProvider.primarylight),
                    child: Text("${counter}",
                      style: const TextStyle(fontSize: 40,fontWeight: FontWeight.normal),),) ,
                  const SizedBox(height: 30,),
                  Container(
                    alignment: Alignment.center,
                    height:60,
                    width:180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: themeProvider.tasbeh),
                    child: Column(
                      children: [
                        Text(azckar[i],
                              style: const TextStyle(fontSize: 30,fontWeight: FontWeight.normal),),

                      ],
                    ),
          ),

                  Container(height: 100,)
                ]
            ),
          )
        ],
    );
  }
   void Change(){
     setState(() {
      counter++ ;
          if (counter%34==0) {
             i++;
             if(i==azckar.length){i=0;}

          }
      turns += 1/300;
    });
 }
}