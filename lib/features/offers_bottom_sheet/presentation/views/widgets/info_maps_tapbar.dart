import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import 'colophone_widget.dart';
import 'payment_listview_widget.dart';

class InfoMapsTapBarScreen extends StatelessWidget {
  const InfoMapsTapBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Container(
            height: 225.h,
            width: 390.w,
            child:
                Image.asset('lib/core/assets/images/map.png', fit: BoxFit.fill),
          ),
          SizedBox(
            height: 20.h,
          ),
          InfoWidget(
            infoImage: 'lib/core/assets/images/on-time.png',
            infoName: 'Delivery time',
            firstNote: 'Today:',
            fristValue: '16:15 - 20:00',
            secondNote: 'Tomorrow:',
            secondValue: '15:30 - 20:00',
            // thirdNote: '',
            // thirdValue: '',
          ),
          SizedBox(
            height: 12.h,
          ),
          InfoWidget(
            infoImage: 'lib/core/assets/images/pickup_symbol.png',
            infoName: 'pickup_symbol',
            firstNote: 'Today:',
            fristValue: '16:15 - 20:00',
            secondNote: 'Tomorrow:',
            secondValue: '15:30 - 20:00',
            // thirdNote: '',
            // thirdValue: '',
          ),
          SizedBox(
            height: 12.h,
          ),
          InfoWidget(
            infoImage: 'lib/core/assets/images/fees.png',
            infoName: 'Fees',
            firstNote: 'Order From:',
            fristValue: '40.00 LE',
            secondNote: 'Delivery Costs: Under 60.00 LE',
            secondValue: '0.25 LE',
            // thirdNote: 'Under 60.00 LE',
            // thirdValue: '0.25 LE',
          ),
          SizedBox(
            height: 12.h,
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Row(
                  children: [
                    Image.asset('lib/core/assets/images/payment_options.png'),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Payment options',
                      style: Styles.textstyle16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              const PaymentListViewWidget(),
              SizedBox(
                height: 12.h,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: Row(
                      children: [
                        Image.asset('lib/core/assets/images/colophon.png'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          'Colophon',
                          style: Styles.textstyle16,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  const ColophoneWidget(),
                  SizedBox(
                    height: 150.h,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class InfoWidget extends StatelessWidget {
  InfoWidget({
    super.key,
    required this.infoImage,
    required this.infoName,
    required this.firstNote,
    required this.secondNote,
    required this.fristValue,
    required this.secondValue,
    // this.thirdNote,
    // this.thirdValue,
  });

  final String infoImage,
      infoName,
      firstNote,
      secondNote,
      fristValue,
      secondValue;
  // String? thirdNote, thirdValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Row(
            children: [
              Image.asset(infoImage),
              SizedBox(
                width: 8.w,
              ),
              Text(
                infoName,
                style: Styles.textstyle16,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          width: 320.w,
          height: 125.h,
          decoration: ShapeDecoration(
            color: ColorStyles.secondColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      firstNote,
                      style: Styles.textstyle14.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorStyles.greyColor),
                    ),
                    const Spacer(),
                    Text(
                      fristValue,
                      style: Styles.textstyle14.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorStyles.greyColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 12.h),
                      child: SizedBox(
                        width: 100.w,
                        height: 44.h,
                        child: Text(
                          secondNote,
                          style: Styles.textstyle14.copyWith(
                              fontWeight: FontWeight.w400,
                              color: ColorStyles.greyColor),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      secondValue,
                      style: Styles.textstyle14.copyWith(
                          fontWeight: FontWeight.w400,
                          color: ColorStyles.greyColor),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 14.h,
                // ),
                // Row(
                //   children: [
                //     Text(
                //       thirdNote!,
                //       style: Styles.textstyle14.copyWith(
                //           fontWeight: FontWeight.w400,
                //           color: ColorStyles.greyColor),
                //     ),
                //     const Spacer(),
                //     Text(
                //       thirdValue!,
                //       style: Styles.textstyle14.copyWith(
                //           fontWeight: FontWeight.w400,
                //           color: ColorStyles.greyColor),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
