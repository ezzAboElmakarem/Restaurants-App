import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class OffersTapBarScreen extends StatelessWidget {
  const OffersTapBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 25.h,
          ),
          Container(
            width: 320.w,
            height: 120.h,
            decoration: ShapeDecoration(
              color: ColorStyles.secondColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(2)),
            ),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 6.w,
                  ),
                  Image.asset('lib/core/assets/images/offers.png'),
                  SizedBox(
                    width: 18.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'December Deal',
                        style: Styles.textstyle16,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        width: 256.w,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          style: Styles.textstyle14
                              .copyWith(color: ColorStyles.greyColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
