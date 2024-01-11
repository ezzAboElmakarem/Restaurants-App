import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/styles.dart';

// Widget for the screen to add a coupon

class AddCouponScreen extends StatelessWidget {
  const AddCouponScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.secondColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_backspace_outlined,
              color: Colors.white),
        ),
        title: Row(
          children: [
            Text(
              'Add voucher',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 320.w,
                height: 390.h,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side:
                        BorderSide(width: 1, color: ColorStyles.lightGreyColor),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Coupon Image and Title
                      Row(
                        children: [
                          Image.asset('lib/core/assets/images/cobon.png'),
                          SizedBox(
                            width: 12.w,
                          ),
                          Text(
                            'Add voucher',
                            style: Styles.textstyle16,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'our discounts include gift cards, vouchers, and any other promotional codes ',
                        style: Styles.textstyle12
                            .copyWith(color: ColorStyles.greyColor),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Text(
                        'please note that you can no longer choose cash as a payment method if you have applied a discount code to your order.',
                        style: Styles.textstyle12
                            .copyWith(color: ColorStyles.greyColor),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Text(
                        'Discount code',
                        style: Styles.textstyle14,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      // Input coupon code field
                      Container(
                        height: 50.h,
                        width: 298.w,
                        child: TextFormField(
                          cursorHeight: 25.h,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: ColorStyles.textColor,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.w,
                                color: ColorStyles.greyColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Container(
                        height: 50.h,
                        width: 298.w,
                        color: ColorStyles.blueColor,
                        child: Center(
                          child: Text(
                            'Apply code',
                            style: Styles.textstyle14
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
