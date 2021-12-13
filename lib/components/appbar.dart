import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/components/tabbar_item.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class SimpleAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SimpleAppbar({Key? key, required this.title}) : super(key: key);

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

class AppBarWithTabBar extends StatelessWidget with PreferredSizeWidget {
  final bool isHomepageAppBar;
  final String title;
  final List<String> tabBarItemTitles;

  const AppBarWithTabBar({
    Key? key,
    this.isHomepageAppBar = false,
    required this.title,
    required this.tabBarItemTitles,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(96);

  @override
  Widget build(BuildContext context) {
    List<TabBarItem> tabItems = [];
    tabBarItemTitles.forEach((e) {
      tabItems.add(TabBarItem(title: e));
    });
    return AppBar(
      backgroundColor: kWhite,
      elevation: 0,
      title: Center(
        child: Text(
          title,
          style: isHomepageAppBar
              ? kAppBarWithTabbarTitleTextStyle
              : kSimpleAppBarTitleTextStyle,
        ),
      ),
      bottom: TabBar(
        isScrollable: true,
        indicatorColor: Colors.black,
        unselectedLabelColor: Colors.black45,
        labelColor: Colors.black,
        tabs: tabItems,
      ),
    );
  }
}
