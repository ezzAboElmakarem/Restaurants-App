import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import 'review_container_widget.dart';

class ReviewsTapBarScreen extends StatelessWidget {
  const ReviewsTapBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130.h,
            color: ColorStyles.textColor,
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 8.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 20.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Column(
                        children: [
                          Text(
                            'Overall score',
                            style: Styles.textstyle18
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            '4.0',
                            style: Styles.textstyle32
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 35.h),
                      child: const VerticalDivider(
                        width: 2.0, // Adjust the width as needed
                        color: Color(0xFF475989), // Adjust the color as needed
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
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
                        SizedBox(
                          height: 6.h,
                        ),
                        Text(
                          'out of 753 reviews',
                          style:
                              Styles.textstyle14.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

//*********************************************************************************************************************************************************************************************** */
          SizedBox(
            height: 29.h,
          ),
//*********************************************************************************************************************************************************************************************** */
          const ReviewContainerWidget(),
          SizedBox(
            height: 150.h,
          ),
        ],
      ),
    );
  }
}
