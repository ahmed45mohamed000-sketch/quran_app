import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/Hadith_Details/hadith_contant_widget.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/hadeth_tab.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeNamed = '/hadith_details';

  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithItem hadithItem =
        ModalRoute.of(context)?.settings.arguments as HadithItem;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            getImagesPathsNamed(imageName: 'main_background.png'),
          ),
        ),
      ),

      child: Scaffold(
        appBar: AppBar(title: Text(hadithItem.title)),
        body: Card(
          margin: EdgeInsets.symmetric(vertical: 180, horizontal: 30),
          color: Colors.white,

          child: HadithContantWidget(content: hadithItem.content),
        ),
      ),
    );
  }
}
