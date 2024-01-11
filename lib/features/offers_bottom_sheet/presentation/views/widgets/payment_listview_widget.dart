import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class PaymentListViewWidget extends StatelessWidget {
  const PaymentListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Container(
        height: 110.h,
        width: 320.w,
        color: ColorStyles.secondColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 20.h),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 46.h,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 60,
                    height: 48,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x4C79797B)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: [
                        const Spacer(),
                        Image.asset('lib/core/assets/images/paypal.png'),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Credit Card',
                          style: Styles.textstyle10
                              .copyWith(color: ColorStyles.greyColor),
                        ),
                        const Spacer(),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => SizedBox(width: 8.w),
                itemCount: 5),
          ),
        ),
      ),
    );
  }
}
