import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';
import 'package:vietcetera_ui_clone/screens/about_screen.dart';
import 'package:vietcetera_ui_clone/screens/bookmark_screen.dart';
import 'package:vietcetera_ui_clone/screens/category_screen.dart';
import 'package:vietcetera_ui_clone/screens/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({Key? key}) : super(key: key);

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;
  var screens = [
    HomeScreen(),
    CategoryScreen(),
    BookmarkScreen(),
    AboutScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 3,
        backgroundColor: kWhite,
        iconSize: 28,
        
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kGreen,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) => setState(() => currentIndex = value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
