import 'package:final_project/constants/colors.dart';
import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText, this.rightText);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: kFont,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              color: kFontLight,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}
