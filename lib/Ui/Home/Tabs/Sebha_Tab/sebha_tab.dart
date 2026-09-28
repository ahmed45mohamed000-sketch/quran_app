import 'package:flutter/material.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class SebhaTab extends StatefulWidget {
  SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tasbehName = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          Expanded(
              child: Image.asset(
                  getImagesPathsNamed(imageName: 'hesader_senha_ic.png'))),
          Text(
            'Number Tasbeh',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            margin: EdgeInsets.all(4),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Color(0xFFB7935F),
            ),
            child: Text(
              '$counter',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              onTextClicked();
            },
            child: Container(
              margin: EdgeInsets.all(4),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFFB7935F),
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int index = 0;

  String name = 'سبحان الله';

  void onTextClicked() {
    counter++;
    if (counter == 33) {
      counter = 0;
      index++;
    }
    if (index == tasbehName.length) {
      index = 0;
    }
    name = tasbehName[index];
    setState(() {});
  }
}
