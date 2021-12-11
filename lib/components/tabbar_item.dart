import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class TabBarItem extends StatelessWidget {
  final String title;

  const TabBarItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Center(
        child: Text(
          title,
          style: kTabBarItemTextStyle,
        ),
      ),
    );
  }
}
