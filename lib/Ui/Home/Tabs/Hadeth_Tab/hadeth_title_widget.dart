import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/Hadith_Details/hadith_details_screen.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  HadithItem hadithItem;

  HadethTitleWidget({required this.hadithItem, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          HadithDetailsScreen.routeNamed,
          arguments: hadithItem,
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        alignment: Alignment.center,
        child: Text(
          hadithItem.title,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
        ),
      ),
    );
  }
}
