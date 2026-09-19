import 'package:flutter/material.dart';

class VersesWidget extends StatelessWidget {
String verses;
VersesWidget({required this.verses});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(verses,textAlign: TextAlign.center,textDirection: TextDirection.rtl,style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),),
    );
  }
}
