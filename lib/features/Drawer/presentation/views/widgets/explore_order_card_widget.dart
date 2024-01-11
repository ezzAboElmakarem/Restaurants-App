import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/shared_component/component.dart';
import '../../../../../core/styles.dart';
import 'track_or_cancel_order_bottom_sheet.dart';

class ExploreOrderCardWidget extends StatelessWidget {
  const ExploreOrderCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        bottomSheetMethod(
            context: context,
            bottomSheetContent: const TrackOrCancelOrderBottomSheet(),
            height: MediaQuery.of(context).size.height * .65);
      },
      child: Container(
        width: 390.w,
        height: 140.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: ColorStyles.lightGreyColor,
            ),
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 110.w,
              height: 140.h,
              child: Image.asset('lib/core/assets/images/single_pizza.png',
                  fit: BoxFit.cover),
            ),
            SizedBox(
              width: 20.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  '1 Classic Margherita ',
                  style: Styles.textstyle16,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  '(25 cm) Medium, Classic, Tomateonsaus',
                  style: Styles.textstyle12.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.greyColor),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: Image.asset(
                          'lib/core/assets/images/grey_location.png'),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Cairo, Egypt',
                      style: Styles.textstyle12.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorStyles.greyColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  '60.00 \$',
                  style: Styles.textstyle16.copyWith(
                      color: kPrimaryColor, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
