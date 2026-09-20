import 'package:flutter/material.dart';

class HadithContantWidget extends StatelessWidget {
  String content;

  HadithContantWidget({required this.content, super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
