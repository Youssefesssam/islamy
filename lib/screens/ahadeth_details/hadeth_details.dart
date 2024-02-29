import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/model/sura_details_arg.dart';
import 'package:islamy/utils/app_theme.dart';
import '../app_scaffold/app_scaffold.dart';

class hadethDetailse extends StatefulWidget {
  const hadethDetailse({super.key});
  static String routeName ="suradetailse";

  @override
  State<hadethDetailse> createState() => _hadethDetailseState();
}

class _hadethDetailseState extends State<hadethDetailse> {
  String fileContent =" ";

  @override
  Widget build(BuildContext context) {
    ScreenDetailsArgs arg = ModalRoute.of(context)!.settings.arguments as ScreenDetailsArgs;
    readhadethFile(arg.fileName);
    return AppScaffold(
      title:arg.Name ,
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

  void readhadethFile(String fileName) async
  {
    Future<String> futureFileContent =  rootBundle.loadString("assets/hadeth/$fileName");
    fileContent = await futureFileContent;

    setState(() {});
  }
}
