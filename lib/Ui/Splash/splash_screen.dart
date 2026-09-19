import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/home_screen.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class SplashScreen extends StatelessWidget {
  static const String routeNamed='/';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeScreen.routeNamed);

    });

    return Scaffold(
      body: Image.asset(getImagesPathsNamed(imageName: 'splash.png'),width: double.infinity,height: double.infinity,fit: BoxFit.fill,),

    );
  }
}
