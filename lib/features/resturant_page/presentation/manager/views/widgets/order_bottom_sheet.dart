import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'store_bag_widget.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';
import '../../cubit/resturant_page_cubit.dart';
import 'basket_page.dart';
import 'food&items_description.dart';

class OrderBottomSheet extends StatefulWidget {
  const OrderBottomSheet({super.key});

  @override
  State<OrderBottomSheet> createState() => _OrderBottomSheetState();
}

class _OrderBottomSheetState extends State<OrderBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResturantPageCubit(),
      child: BlocConsumer<ResturantPageCubit, ResturantPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ResturantPageCubit cubit = ResturantPageCubit.get(context);

          /********************************************** */
          Future<dynamic> bottomSheetMethod(
              BuildContext context, Widget bottomSheetContent, double? height) {
            return showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              isScrollControlled: true,
              useRootNavigator: true,
              context: context,
              builder: (context) => Padding(
                padding: EdgeInsets.all(18.0.h),
                child: SizedBox(
                  height: height ?? MediaQuery.of(context).size.height * .87,
                  child: bottomSheetContent,
                ),
              ),
            );
          }
/***************************************************************** */

          late int num_of_Orders;
          return Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
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
                          Text('Titleee', style: Styles.textstyle16),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
                    Text(
                      'Classic Margherita ',
                      style: Styles.textstyle20,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi',
                      style: Styles.textstyle14
                          .copyWith(color: ColorStyles.greyColor),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      '60.00 \$',
                      style: Styles.textstyle18.copyWith(color: kPrimaryColor),
                    ),
                    Container(
                      height: 630.h,
                      width: 393.w,
                      color: ColorStyles.secondColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 18.h,
                            ),
                            Text(
                              'Size',
                              style: Styles.textstyle16,
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: cubit.sizeOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.sizeOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  '(25 cm) Medium 60.00 \$',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: cubit.sizeOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.sizeOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  '(30 cm) Italian 80.00 \$',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 3,
                                  groupValue: cubit.sizeOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.sizeOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  '(40 cm) Family XXL 100.00 \$',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Text(
                              'Type',
                              style: Styles.textstyle16,
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: cubit.typeOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.typeOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Classic',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: cubit.typeOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.typeOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Chessy Crust',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                Text(
                                  '5.00 \$',
                                  style: Styles.textstyle12
                                      .copyWith(color: ColorStyles.greyColor),
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                            Text(
                              'Saus',
                              style: Styles.textstyle16,
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 1,
                                  groupValue: cubit.sausOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.sausOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  'Tomatensaus',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: 2,
                                  groupValue: cubit.sausOrder_Group_RadioButton,
                                  onChanged: (value) {
                                    setState(() {
                                      cubit.sausOrder_Group_RadioButton =
                                          value!;
                                    });
                                  },
                                ),
                                Text(
                                  'BBQ Saus',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                Text(
                                  '5.00 \$',
                                  style: Styles.textstyle12
                                      .copyWith(color: ColorStyles.greyColor),
                                ),
                                SizedBox(
                                  width: 8.h,
                                ),
                                InkWell(
                                  onTap: () {
                                    bottomSheetMethod(context,
                                        const FoodAndItemsDescription(), null);
                                  },
                                  child: Image.asset(
                                      'lib/core/assets/images/info.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 64.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Container(
                      height: 45.h,
                      width: 164.w,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0x4C79797B)),
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              cubit.numOfOrders--;
                              num_of_Orders = cubit.numOfOrders;
                              cubit.numberOfOreders(num_of_Orders);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 18.h),
                              child: const Icon(Icons.minimize),
                            ),
                          ),
                          Text(
                            cubit.numOfOrders.toString(),
                            style: Styles.textstyle16
                                .copyWith(color: ColorStyles.blueColor),
                          ),
                          InkWell(
                            onTap: () {
                              cubit.numOfOrders++;
                              num_of_Orders = cubit.numOfOrders;
                              cubit.numberOfOreders(num_of_Orders);
                            },
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    InkWell(
                      onTap: () {
                        showToastWidget(
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 77.h,
                            decoration:
                                BoxDecoration(color: ColorStyles.blueColor),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 21.w,
                                ),
                                const StoreBagWidget(
                                    numBackgroundColor: kPrimaryColor),
                                SizedBox(
                                  width: 54.w,
                                ),
                                Text(
                                  'Go to basket (60.00 \$)',
                                  style: Styles.textstyle18
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          context: context,
                          duration: const Duration(seconds: 2),
                        );
                        Navigator.pop(context);
                        const Duration(seconds: 1);
                        bottomSheetMethod(
                            context,
                            BasketPage(numberOfOrders: cubit.numOfOrders),
                            MediaQuery.of(context).size.height * 0.93);
                      },
                      child: Container(
                        height: 40.h,
                        width: 164.w,
                        color: ColorStyles.blueColor,
                        child: Center(
                          child: Text('60.00 \$',
                              style: Styles.textstyle16
                                  .copyWith(color: Colors.white)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
