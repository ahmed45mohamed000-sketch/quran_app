import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/hadeth_title_widget.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class HadethTab extends StatefulWidget {
  HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<HadithItem> hadithList = [];

  @override
  Widget build(BuildContext context) {
    if (hadithList.isEmpty) loadHadithFile();
    return Container(
      child: hadithList.isEmpty
          ? CircularProgressIndicator()
          : Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    getImagesPathsNamed(imageName: 'hadith_header_image.png'),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView.separated(
                    itemBuilder: (context, index) =>
                        HadethTitleWidget(hadithItem: hadithList[index]),
                    separatorBuilder: (context, index) => Divider(
                      thickness: 2,
                      color: Color(0xFFB7935F),
                      indent: 30,
                    ),
                    itemCount: hadithList.length,
                  ),
                ),
              ],
            ),
    );
  }

  void loadHadithFile() async {
    String fileContent = await rootBundle.loadString(
      'assets/files/ahadeth.txt',
    );
    var allHadith = fileContent.trim().split('#');
    for (int i = 0; i < allHadith.length; i++) {
      var hadithLines = allHadith[i].trim().split('\n');
      String hadithTitle = hadithLines[0];
      hadithLines.removeAt(0);
      String hadithContent = hadithLines.join('\n');
      HadithItem hadithItem = HadithItem(
        title: hadithTitle,
        content: hadithContent,
      );
      hadithList.add(hadithItem);
      setState(() {});
    }
  }
}

class HadithItem {
  String title;
  String content;

  HadithItem({required this.title, required this.content});
}
