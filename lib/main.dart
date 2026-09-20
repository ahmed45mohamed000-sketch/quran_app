import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/Hadith_Details/hadith_details_screen.dart';
import 'package:islami/Ui/Home/Tabs/Quran_Tab/quran_details_screen.dart';
import 'package:islami/Ui/Home/home_screen.dart';
import 'package:islami/Ui/Splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeNamed: (_) => SplashScreen(),
        HomeScreen.routeNamed: (_) => HomeScreen(),
        QuranDetailsScreen.routeNamed: (_)=> QuranDetailsScreen(),
        HadithDetailsScreen.routeNamed: (_) => HadithDetailsScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFB7935F),
          primary: Color(0xFFB7935F),
        ),
        appBarTheme: AppBarThemeData(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color(0xFF242424),
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
          centerTitle: true,
        ),
        scaffoldBackgroundColor: Colors.transparent,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 28),
          selectedLabelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),

      ),
    );
  }
}
