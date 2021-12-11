import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget{
  final String title;

  const SimpleAppbar({ Key? key, required this.title }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        title: Center(
          child: Text(
            title,
            style: kSimpleAppBarTitleTextStyle,
          ),
        ),
      );
  }
}