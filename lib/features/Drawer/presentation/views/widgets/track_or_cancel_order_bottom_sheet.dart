import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class TrackOrCancelOrderBottomSheet extends StatelessWidget {
  const TrackOrCancelOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 8.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 8.w,
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.clear_sharp)),
                      SizedBox(
                        width: 8.w,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text('Order',
                          style: Styles.textstyle18
                              .copyWith(fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 23.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 230.h,
                width: 170.w,
                child: Image.asset(
                  'lib/core/assets/images/single_pizza_for_sheet.png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                width: 22.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 166.w,
                    child: Text(
                      '1 Classic Margherita ',
                      style: Styles.textstyle16
                          .copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Size',
                        style: Styles.textstyle14
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        '(25 cm) Medium',
                        style: Styles.textstyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorStyles.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Type',
                        style: Styles.textstyle14
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        'Classic',
                        style: Styles.textstyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorStyles.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Saus',
                        style: Styles.textstyle14
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        'Tomatensaus',
                        style: Styles.textstyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: ColorStyles.greyColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'Address',
                        style: Styles.textstyle14
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      SizedBox(
                        width: 18.w,
                        height: 18.h,
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
                ],
              ),
            ],
          ),
          SizedBox(
            height: 23.h,
          ),
          Row(
            children: [
              Text(
                'Price',
                style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Text(
                '60.25 \$',
                style: Styles.textstyle14.copyWith(
                    fontWeight: FontWeight.w700, color: kPrimaryColor),
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              Text(
                'Estimated Delivery time',
                style: Styles.textstyle14.copyWith(fontWeight: FontWeight.w700),
              ),
              const Spacer(),
              Text(
                '15-20 Mins',
                style: Styles.textstyle14.copyWith(
                    fontWeight: FontWeight.w700, color: ColorStyles.greenColor),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 360.w,
              height: 55.h,
              decoration: ShapeDecoration(
                color: ColorStyles.blueColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Center(
                child: Text(
                  'Track my order',
                  style: Styles.textstyle16.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          InkWell(
            onTap: () {
              // AwesomeDialog(
              //   context: context,
              //   headerAnimationLoop: false,
              //   animType: AnimType.scale,
              //   dialogType: DialogType.noHeader,
              //   body:
              // );

              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: SizedBox(height: 70.h),
                        backgroundColor: Colors.white,
                        title: SizedBox(
                          height: 60.h,
                          width: 250.w,
                          child: Text(
                            'Are you sure you want to cancel your order request ?',
                            style: Styles.textstyle18
                                .copyWith(fontWeight: FontWeight.w400),
                          ),
                        ),
                        actions: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Cancel',
                              style: Styles.textstyle16,
                            ),
                          ),
                          SizedBox(
                            width: 100.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Confirm',
                              style: Styles.textstyle16
                                  .copyWith(color: ColorStyles.redColor),
                            ),
                          ),
                        ],
                      ));
            },
            child: Container(
              width: 360.w,
              height: 55.h,
              decoration: ShapeDecoration(
                color: ColorStyles.redColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child: Center(
                child: Text(
                  'Cancel my order',
                  style: Styles.textstyle16.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
