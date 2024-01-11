import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';

class FoodAndItemsDescription extends StatelessWidget {
  const FoodAndItemsDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15.h,
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                SizedBox(
                  width: 32.w,
                ),
                Image.asset('lib/core/assets/images/down-arrow.png'),
                SizedBox(
                  width: 8.w,
                ),
                Text('Tomatensaus', style: Styles.textstyle16),
              ],
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            'Allergens',
            style: Styles.textstyle16,
          ),
          SizedBox(
            height: 24.h,
          ),
          Row(
            children: [
              Text(
                '- ',
                style: Styles.textstyle24,
              ),
              Text(
                'contain cereals products and products containing ',
                style:
                    Styles.textstyle14.copyWith(color: ColorStyles.textColor),
              ),
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            children: [
              Text(
                '- ',
                style: Styles.textstyle24,
              ),
              Text(
                'contain cereals products and products containing ',
                style:
                    Styles.textstyle14.copyWith(color: ColorStyles.textColor),
              ),
            ],
          ),
          SizedBox(
            height: 11.h,
          ),
          Row(
            children: [
              Text(
                '- ',
                style: Styles.textstyle24,
              ),
              Text(
                'contain cereals products and products containing ',
                style:
                    Styles.textstyle14.copyWith(color: ColorStyles.textColor),
              ),
            ],
          ),
          SizedBox(
            height: 300.h,
          ),
          Text(
            'we always provide you with relevant information given to us by our partners relating to their products , please contact our customer service department ',
            style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
          )
        ],
      ),
    );
  }
}
