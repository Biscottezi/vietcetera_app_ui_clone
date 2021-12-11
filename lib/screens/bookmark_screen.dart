import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/components/appbar.dart';
import 'package:vietcetera_ui_clone/components/blog.dart';
import 'package:vietcetera_ui_clone/constants/blog_content.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var markedBlogs = [blogs[0], blogs[1]];
    return Scaffold(
      backgroundColor: kWhite,
      appBar: SimpleAppbar(title: 'Bài đã lưu'),
      body: ListView.builder(
        itemCount: markedBlogs.length,
        itemBuilder: (context, index) => BlogPrimary(
          imageUri: markedBlogs[index]['imageUri']!,
          title: markedBlogs[index]['title']!,
          category: markedBlogs[index]['category']!,
          author: markedBlogs[index]['author']!,
          brief: markedBlogs[index]['brief']!,
          isMarked: true,
        ),
      ),
    );
  }
}
