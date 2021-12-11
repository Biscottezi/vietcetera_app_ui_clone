import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/components/blog.dart';
import 'package:vietcetera_ui_clone/components/tabbar_item.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

import '../constants/blog_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        backgroundColor: kWhite,
        appBar: AppBar(
          backgroundColor: kWhite,
          elevation: 0,
          title: Center(
            child: Text(
              'Vietcetera.',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            unselectedLabelColor: Colors.black45,
            labelColor: Colors.black,
            tabs: [
              TabBarItem(title: 'Mới Nhất'),
              TabBarItem(title: 'Phổ Biến'),
              TabBarItem(title: 'Kinh Doanh'),
              TabBarItem(title: 'Cuộc Sống'),
              TabBarItem(title: 'Sáng Tạo'),
              TabBarItem(title: 'Thời Trang'),
              TabBarItem(title: 'Thưởng Thức'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: blogs.length,
          itemBuilder: (context, index) {
            return BlogPrimary(
                imageUri: blogs[index]['imageUri']!,
                title: blogs[index]['title']!,
                category: blogs[index]['category']!,
                author: blogs[index]['author']!,
                brief: blogs[index]['brief']!);
          },
        ),
      ),
    );
  }
}
