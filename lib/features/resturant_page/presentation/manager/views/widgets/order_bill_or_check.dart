import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';

class OrderCheckOrBillWidget extends StatelessWidget {
  const OrderCheckOrBillWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            // const Spacer(
            //   flex: 1,
            // ),
            Text(
              'Subtotal',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            const Spacer(),
            // SizedBox(
            //   width: 188.w,
            // ),
            Text(
              '60.00 \$',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            SizedBox(
              width: 50.w,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            // const Spacer(
            //   flex: 1,
            // ),
            Text(
              'Delivery',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            const Spacer(),
            // SizedBox(
            //   width: 188.w,
            // ),
            Text(
              'FREE',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            SizedBox(
              width: 50.w,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            // const Spacer(
            //   flex: 1,
            // ),
            Text(
              'Transaction Costs',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            const Spacer(),
            // SizedBox(
            //   width: 188.w,
            // ),
            Text(
              '0.25 \$',
              style: Styles.textstyle14.copyWith(color: ColorStyles.greyColor),
            ),
            SizedBox(
              width: 50.w,
            ),
          ],
        ),
        SizedBox(
          height: 24.h,
        ),
        Row(
          children: [
            SizedBox(
              width: 40.w,
            ),
            // const Spacer(
            //   flex: 1,
            // ),
            Text(
              'Total',
              style: Styles.textstyle16,
            ),
            const Spacer(),
            // SizedBox(
            //   width: 188.w,
            // ),
            Text(
              '60.25 \$',
              style: Styles.textstyle16,
            ),
            SizedBox(
              width: 50.w,
            ),
          ],
        ),
      ],
    );
  }
}
