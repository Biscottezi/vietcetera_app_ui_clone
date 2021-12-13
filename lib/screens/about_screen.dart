import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vietcetera_ui_clone/components/appbar.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: SimpleAppbar(title: 'Thông tin & Liên hệ'),
      body: Column(
        children: [
          _buildInfoSection(
              iconData: Icons.home_outlined, primText: 'Về Vietcetera'),
          _buildInfoSection(
              iconData: Icons.check, primText: 'Điều khoản sử dụng'),
          _buildInfoSection(
              iconData: Icons.menu_book, primText: 'Chính sách bảo mật'),
          _buildInfoSection(
            iconData: Icons.mail_outline,
            primText: 'Góp ý ứng dụng',
            subText: 'Ứng dụng của chúng tôi tốt hơn một phần là nhờ bạn',
          ),
          _buildInfoSection(
            iconData: Icons.phone_outlined,
            primText: 'Liên hệ',
            subText: 'Email: team@vietcetera.com\nSĐT: +84 286 286 2989',
          ),
          Divider(
            color: kBlack45,
            height: 10,
            thickness: 0.2,
          ),
          Text(
            'Phiên bản 1.0.0 © Vietcetera 2021. All Rights Reserved.',
            style: kBlogSubTextStyle.copyWith(color: kBlack45),
          ),
          Padding(
            padding: EdgeInsets.only(left: 32, top: 16),
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.facebook),
                SizedBox(width: 16),
                FaIcon(FontAwesomeIcons.instagram),
                SizedBox(width: 16),
                FaIcon(FontAwesomeIcons.youtube),
                SizedBox(width: 16),
                FaIcon(FontAwesomeIcons.linkedin),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(
      {required IconData iconData, required String primText, String? subText}) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: (subText != null)
              ? CrossAxisAlignment.start
              : CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 28,
              color: kBlack87,
            ),
            SizedBox(width: 10),
            (subText == null)
                ? Text(
                    primText,
                    style: TextStyle(
                      color: kBlack87,
                      fontFamily: 'Poppins',
                      fontSize: 16,
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          primText,
                          style: TextStyle(
                            color: kBlack87,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          subText,
                          style: kBlogSubTextStyle.copyWith(
                            color: kBlack45,
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
