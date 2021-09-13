import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        bottom: defaultMargin,
      ),
      child: Row(
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage('assets/image_shoes.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Footbal',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Predator 20.3 Firm Ground',
                  style: primaryTextStyle.copyWith(
                    fontWeight: semiBold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  '\$68,47',
                  style: priceTextStyle.copyWith(
                    fontWeight: medium,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
