import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/Tabs/Quran_Tab/quran_details_screen.dart';

class SuraTitleWidget extends StatelessWidget {
  String suraTitle;
  String numOfVerses;
  int index;
  SuraTitleWidget({required this.suraTitle, required this.numOfVerses, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      Navigator.pushNamed(context, QuranDetailsScreen.routeNamed,
      arguments:SuraArguments(suraTitle: suraTitle, index: index),
      );

      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
      
                child: Text(
                  suraTitle,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF242424),
                  ),
                ),
              ),
            ),
            VerticalDivider(color: Color(0xFFB7935F)),
      
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  numOfVerses,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF242424),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SuraArguments{
  String suraTitle;
  int index;
  SuraArguments({required this.suraTitle, required this.index});
}

