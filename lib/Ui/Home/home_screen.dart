import 'package:flutter/material.dart';
import 'package:islami/Ui/Home/Tabs/Hadeth_Tab/hadeth_tab.dart';
import 'package:islami/Ui/Home/Tabs/Quran_Tab/quran_tab.dart';
import 'package:islami/Ui/Home/Tabs/Radio_Tab/radio_tab.dart';
import 'package:islami/Ui/Home/Tabs/Sebha_Tab/sebha_tab.dart';
import 'package:islami/Utils/image_paths_utils.dart';

class HomeScreen extends StatefulWidget {
  static const String routeNamed = '/home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
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
        appBar: AppBar(title: Text('Islami')),
        bottomNavigationBar: Theme(
          data: Theme.of(
            context,
          ).copyWith(canvasColor: Theme.of(context).colorScheme.primary),
          child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(getImagesPathsNamed(imageName: 'quran.png')),
                ),
                label: 'Quran',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(getImagesPathsNamed(imageName: 'hadeth.png')),
                ),
                label: 'Hadeth',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(getImagesPathsNamed(imageName: 'sebha.png')),
                ),
                label: 'Sebha',
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(getImagesPathsNamed(imageName: 'radio.png')),
                ),
                label: 'Radios',
              ),
            ],
          ),
        ),
        body: tabs[selectedIndex],
      ),
    );
  }
}

var tabs = [QuranTab(), HadethTab(), SebhaTab(), RadioTab()];
