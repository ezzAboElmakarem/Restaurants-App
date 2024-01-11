import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class ReviewContainerWidget extends StatelessWidget {
  const ReviewContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 500.h,
          child: ListView.separated(
            separatorBuilder: (context, index) => SizedBox(height: 20.h),
            itemCount: 6,
            itemBuilder: (context, index) => Container(
              width: 380.w,
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
              color: ColorStyles.secondColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'daniella bos',
                    style: Styles.textstyle16.copyWith(color: kPrimaryColor),
                  ),
                  Text(
                    'Sunday, 17 December ',
                    style: Styles.textstyle14
                        .copyWith(color: ColorStyles.greyColor),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Food',
                        style: Styles.textstyle16,
                      ),
                      const Spacer(),
                      RatingBar.builder(
                        unratedColor: ColorStyles.unRatedStarColor,
                        ignoreGestures: true,
                        itemSize: 23.sp,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Delivery',
                        style: Styles.textstyle16,
                      ),
                      const Spacer(),
                      RatingBar.builder(
                        unratedColor: ColorStyles.unRatedStarColor,
                        ignoreGestures: true,
                        itemSize: 23.sp,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    width: 339.w,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit,\nsed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
