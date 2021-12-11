import 'package:flutter/material.dart';
import 'package:vietcetera_ui_clone/constants/constants.dart';

class BlogPrimary extends StatelessWidget {
  final String imageUri;
  final String title;
  final String category;
  final String brief;
  final String author;
  final bool isMarked;

  const BlogPrimary({
    Key? key,
    required this.imageUri,
    required this.title,
    required this.category,
    required this.author,
    required this.brief,
    this.isMarked = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kBlack45,
            width: 1.0,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.asset('assets/$imageUri'),
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: kBlogTitleTextStyle,
          ),
          SizedBox(height: 16),
          Text(
            brief,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: kBlogBriefTextStyle,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  author,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: kBlogSubTextStyle,
                ),
              ),
              SizedBox(width: 10),
              Text(
                category,
                style: kBlogSubTextStyle,
              ),
              Spacer(
                flex: 1,
              ),
              Icon(
                isMarked ? Icons.bookmark : Icons.bookmark_border_outlined,
                color: kBlack45,
              ),
            ],
          )
        ],
      ),
    );
  }
}
