import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/styles.dart';
import '../manager/cubit/filter_bottom_sheet_cubit.dart';

class FiltersBottomSheet extends StatefulWidget {
  const FiltersBottomSheet({super.key});

  @override
  State<FiltersBottomSheet> createState() => _FiltersBottomSheetState();
}

class _FiltersBottomSheetState extends State<FiltersBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FilterBottomSheetCubit(),
      child: BlocConsumer<FilterBottomSheetCubit, FilterBottomSheetStates>(
        listener: (context, state) {},
        builder: (context, state) {
          FilterBottomSheetCubit cubit = FilterBottomSheetCubit.get(context);
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 32.w,
                      ),
                      Image.asset('lib/core/assets/images/down-arrow.png'),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text('Filter', style: Styles.textstyle16),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                //'Sort By',

                Text('Sort By', style: Styles.textstyle16),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                    width: 235,
                    height: 36,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x4C444444)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: cubit.dropDownMethod()),
                SizedBox(
                  height: 18.h,
                ),

                ///*************************************************************************************** */

                Row(
                  children: [
                    Text('Free Delivery', style: Styles.textstyle16),
                    const Spacer(),
                    Transform.scale(
                      scale: .6,
                      child: Switch(
                        //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        autofocus: false,
                        activeTrackColor: kPrimaryColor,
                        activeColor: Colors.white,
                        inactiveThumbColor: ColorStyles.textColor,
                        inactiveTrackColor: Colors.white,
                        value: cubit.isSwitched,
                        onChanged: (value) {
                          setState(() {
                            cubit.isSwitched = value;
                            cubit.selectedValue;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),

                ///*************************************************************************************** */

                Text('Min. order amount', style: Styles.textstyle16),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: cubit.orderAmount_Group_RadioButton,
                      onChanged: (value) {
                        setState(() {
                          cubit.orderAmount_Group_RadioButton = value!;
                        });
                      },
                    ),
                    Text(
                      'Show all',
                      style: Styles.textstyle14,
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      '(12)',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: cubit.orderAmount_Group_RadioButton,
                      onChanged: (value) {
                        setState(() {
                          cubit.orderAmount_Group_RadioButton = value!;
                        });
                      },
                    ),
                    Text(
                      '\$ 20.00 or less',
                      style: Styles.textstyle14,
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      '(5)',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Radio(
                      value: 3,
                      groupValue: cubit.orderAmount_Group_RadioButton,
                      onChanged: (value) {
                        setState(() {
                          cubit.orderAmount_Group_RadioButton = value!;
                        });
                      },
                    ),
                    Text(
                      '\$ 10.00 or less',
                      style: Styles.textstyle14,
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      '(2)',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),

                ///*************************************************************************************** */

                Text(
                  'Rating',
                  style: Styles.textstyle16,
                ),
                SizedBox(
                  height: 12.h,
                ),

                RatingBar.builder(
                  itemSize: 30.sp,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: kPrimaryColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),

                // SizedBox(
                //   height: 27.h,
                //   width: double.infinity,
                //   child: ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: 5,
                //     itemBuilder: (context, index) {
                //       return Row(
                //         children: [
                //           SizedBox(
                //             width: 6.w,
                //           ),
                //           Image.asset(
                //               'lib/core/assets/images/symbols_star.png'),
                //         ],
                //       );
                //     },
                //   ),
                // ),

                SizedBox(
                  height: 24.h,
                ),

                ///*************************************************************************************** */
                Text(
                  'Offers and savings',
                  style: Styles.textstyle16,
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: kPrimaryColor,
                      value: cubit.ischecked_1,
                      onChanged: (value) {
                        setState(() {
                          cubit.ischecked_1 = value!;
                        });
                      },
                    ),
                    const Text(
                      'Offers',
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '(2)',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      activeColor: kPrimaryColor,
                      value: cubit.ischecked_2,
                      onChanged: (value) {
                        setState(() {
                          cubit.ischecked_2 = value!;
                        });
                      },
                    ),
                    const Text(
                      'StampCards',
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      '(0)',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                  ],
                ),

                // /************* ********************************************************************************************************************

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'reset filters',
                        style:
                            Styles.textstyle16.copyWith(color: kPrimaryColor),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        '               show 20 results             ',
                        style: Styles.textstyle18
                            .copyWith(color: ColorStyles.blueColor),
                      ),
                    ),
                  ],
                ),
                // /************* ********************************************************************************************************************
              ],
            ),
          );
        },
      ),
    );
  }
}
