import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/components/appbar.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: SimpleAppbar(title: 'Chuyên mục'),
      body: Column(
        children: [
          _buildCategoryTile('Kinh Doanh'),
          _buildCategoryTile('Cuộc Sống'),
          _buildCategoryTile('Sáng Tạo'),
          _buildCategoryTile('Thời Trang'),
          _buildCategoryTile('Thưởng Thức'),
        ],
      ),
    );
  }

  Widget _buildCategoryTile(String title) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              width: 0.1,
              color: kBlack87,
            ),
          ),
        ),
        padding: EdgeInsets.fromLTRB(40, 20, 20, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontFamily: 'Noto Sans',
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            Icon(
              Icons.chevron_right,
              size: 32,
            ),
          ],
        ),
      ),
    );
  }
}
