import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/model/sura_details_arg.dart';
import 'package:islamy/utils/app_theme.dart';
import '../app_scaffold/app_scaffold.dart';

class SuraDetailse extends StatefulWidget {
  const SuraDetailse({super.key});
 static String routename ="suradetailse";

  @override
  State<SuraDetailse> createState() => _SuraDetailseState();
}

class _SuraDetailseState extends State<SuraDetailse> {
   String fileContent =" ";

  @override
  Widget build(BuildContext context) {
    SuraDetailseArg arg = ModalRoute.of(context)!.settings.arguments as SuraDetailseArg;
    readSuraFile(arg.fileName);
    return AppScaffold(
      title:arg.suraName ,
        body:Container(
          margin: EdgeInsets.symmetric(horizontal: 30, 
          vertical: MediaQuery.of(context).size.height*.08),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),

          padding: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Text(fileContent,textDirection:TextDirection.rtl ,
                style: AppTheme.mediumTitleTextStyle,
                textAlign: TextAlign.center),
          ),),
    );
  }

  void readSuraFile(String fileName) async
  {
   Future<String> futureFileContent =  rootBundle.loadString("assets/quran/$fileName");
   fileContent = await futureFileContent;
   List<String> filesLines = fileContent.split("\n");
   for(int i=1; i < filesLines.length ; i++){
     filesLines[i] +="{${i+1}}";
   }
   fileContent = filesLines.join(" ");
   setState(() {});
  }
}
