import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Ui/Home/Tabs/Quran_Tab/sura_title_widget.dart';
import 'package:islami/Ui/Home/Tabs/Quran_Tab/verses_widget.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeNamed = '/quran_details';

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    SuraArguments arguments =
        ModalRoute.of(context)?.settings.arguments as SuraArguments;
    if (verses.isEmpty) loadFile(arguments.index);
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
        appBar: AppBar(
          title: Text(
            arguments.suraTitle,
            style: TextStyle(
              color: Color(0xFF242424),
              fontWeight: FontWeight.w600,
              fontSize: 40,
            ),
          ),
        ),
        body: verses.isEmpty
            ? Center(child: CircularProgressIndicator())
            : Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 55),
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      VersesWidget(verses: verses[index]),
                  separatorBuilder: (context, index) => Divider(indent: 30),
                  itemCount: verses.length,
                ),
              ),
      ),
    );
  }

  void loadFile(int index) async {
    String fileContent = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;
    setState(() {});
  }
}
