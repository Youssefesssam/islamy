import 'package:flutter/material.dart';
import 'package:islamy/utils/app_assets.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(child:  Image.asset(AppAssets.quranTabLogo))

      ],
    );
  }
}
