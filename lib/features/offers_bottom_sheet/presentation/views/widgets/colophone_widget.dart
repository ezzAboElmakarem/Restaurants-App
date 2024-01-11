import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class ColophoneWidget extends StatelessWidget {
  const ColophoneWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 140.h,
      decoration: ShapeDecoration(
        color: ColorStyles.secondColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  '3 Green Rd\nCairo, Egypt\ncairo@pizza.eg',
                  style: Styles.textstyle14.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.greyColor),
                ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            InkWell(
              onTap: () {},
              child: SizedBox(
                width: 150.w,
                height: 44.h,
                child: Text(
                  'Send us an email',
                  style: Styles.textstyle14.copyWith(
                      fontWeight: FontWeight.w400,
                      color: ColorStyles.blueColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
