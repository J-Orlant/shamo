import 'package:flutter/material.dart';

import '../../theme.dart';

class CategoriesItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  const CategoriesItem({
    required this.title,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 10,
      ),
      margin: EdgeInsets.only(
        right: 16,
      ),
      decoration: BoxDecoration(
        color: (!isSelected) ? kTransparentColor : kPrimaryColor,
        border: (!isSelected)
            ? Border.all(
                color: kSubtitleTextColor,
              )
            : Border.all(),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: (!isSelected)
            ? subtitleTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              )
            : primaryTextStyle.copyWith(
                fontSize: 13,
                fontWeight: medium,
              ),
      ),
    );
  }
}
