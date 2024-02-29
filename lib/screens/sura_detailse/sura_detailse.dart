import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../model/sura_details_arg.dart';
import '../../utils/app_theme.dart';
import '../app_scaffold/app_scaffold.dart';

class SuraDetailse extends StatefulWidget {
  static const String routeName = "sura_details";
  const SuraDetailse({super.key});

  @override
  State<SuraDetailse> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetailse> {
  String fileContent = "";
  late ScreenDetailsArgs args;


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)!.settings.arguments as ScreenDetailsArgs;
    if(fileContent.isEmpty){
      readSuraFile();
    }
    return AppScaffold(
      title: args.Name,
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        margin: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.height * .07,
          horizontal: 28,),

        padding: EdgeInsets.all(24),
        child: SingleChildScrollView(
          child: Text(fileContent,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: AppTheme.mediumTitleTextStyle,),
        ),
      ),);
  }

  Future<void> readSuraFile() async{
    Future<String> futureFileContent = rootBundle.loadString("assets/quran/${args.fileName}");
    fileContent = await futureFileContent;
    print(fileContent);
    List<String> fileLines = fileContent.split("\n");
    for(int i = 0; i < fileLines.length; i++){
      fileLines[i] += "{${i + 1}}";
    }
    fileContent = fileLines.join(" ");
    setState(() {});
  }
}
