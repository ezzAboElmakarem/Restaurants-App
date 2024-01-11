import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/shared_component/component.dart';
import '../../../../../check_out_screen/presentation/views/check_out_screen.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';
import '../../cubit/resturant_page_cubit.dart';
import 'delivery_pickup_toggle.dart';
import 'order_bill_or_check.dart';

// ignore: must_be_immutable
class BasketPage extends StatelessWidget {
  BasketPage({super.key, required this.numberOfOrders});

  int numberOfOrders;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResturantPageCubit(),
      child: BlocConsumer<ResturantPageCubit, ResturantPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ResturantPageCubit cubit = ResturantPageCubit.get(context);

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 8.h,
                ),
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
                      Text('Basket',
                          style: Styles.textstyle18
                              .copyWith(fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Delivery_Pickup_Toggle(),
                  ],
                ),
                SizedBox(
                  height: 57.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      Text(
                        numberOfOrders.toString(),
                        style: Styles.textstyle20,
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      Text(
                        'Classic Margherita ',
                        style: Styles.textstyle20,
                      ),
                      const Spacer(),
                      Text(
                        '60.00 \$',
                        style: Styles.textstyle16
                            .copyWith(fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 28.w),
                  child: Text(
                    '(25 cm) Medium, Classic, Tomateonsaus',
                    style: Styles.textstyle12
                        .copyWith(color: ColorStyles.greyColor),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        AwesomeDialog(
                          context: context,
                          headerAnimationLoop: false,
                          animType: AnimType.scale,
                          dialogType: DialogType.noHeader,
                          body: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 10.h,
                            ),
                            child: Column(
                              children: [
                                Row(
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
                                    Text('Add note',
                                        style: Styles.textstyle18.copyWith(
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                Text(
                                  'Add note for “1 classic margherita”',
                                  style: Styles.textstyle14,
                                ),
                                SizedBox(
                                  height: 8.h,
                                ),
                                TextFormField(
                                  maxLines: 3,
                                  maxLength: 150,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: ColorStyles.textColor),
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                          width: 2.w,
                                          color: ColorStyles.lightGreyColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          btnOk: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 276.w,
                              height: 41.h,
                              decoration: ShapeDecoration(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                      width: 1, color: ColorStyles.blueColor),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Save',
                                  style: Styles.textstyle14
                                      .copyWith(color: ColorStyles.blueColor),
                                ),
                              ),
                            ),
                          ),
                        ).show();
                        // showDialog(
                        //   context: context,
                        //   builder: (context) => AlertDialog(
                        //     contentPadding: EdgeInsets.all(15.h),
                        //     backgroundColor: Colors.white,
                        //     title: Row(
                        //       children: [
                        //         SizedBox(
                        //           width: 8.w,
                        //         ),
                        //         IconButton(
                        //             onPressed: () {
                        //               Navigator.pop(context);
                        //             },
                        //             icon: const Icon(Icons.clear_sharp)),
                        //         SizedBox(
                        //           width: 8.w,
                        //         ),
                        //         SizedBox(
                        //           width: 8.w,
                        //         ),
                        //         Text('Add note',
                        //             style: Styles.textstyle18
                        //                 .copyWith(fontWeight: FontWeight.w400)),
                        //       ],
                        //     ),
                        //     actions: [
                        //       SingleChildScrollView(
                        //         child: Column(
                        //           children: [
                        //             Text(
                        //               'Add note for “1 classic margherita”',
                        //               style: Styles.textstyle14,
                        //             ),
                        //             TextFormField(
                        //               maxLines: 3,
                        //               decoration: InputDecoration(
                        //                 border: OutlineInputBorder(
                        //                   borderRadius:
                        //                       BorderRadius.circular(4),
                        //                   borderSide: BorderSide(
                        //                       width: 2.w,
                        //                       color:
                        //                           ColorStyles.lightGreyColor),
                        //                 ),
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // );
                      },
                      child: Text(
                        'Add note',
                        style: Styles.textstyle14
                            .copyWith(color: ColorStyles.blueColor),
                      ),
                    ),
                    SizedBox(
                      width: 170.w,
                    ),
                    InkWell(
                      onTap: () {
                        numberOfOrders--;
                        cubit.selectFilter();
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 24.h,
                            height: 24.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    color: ColorStyles.lightGreyColor),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 8.h,
                            right: -2.w,
                            child: Icon(Icons.minimize_outlined,
                                color: ColorStyles.blueColor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    InkWell(
                      onTap: () {
                        numberOfOrders++;
                        cubit.selectFilter();
                      },
                      child: Stack(
                        children: [
                          Container(
                            width: 24.h,
                            height: 24.h,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1,
                                    color: ColorStyles.lightGreyColor),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -2.h,
                            right: -2.w,
                            child:
                                Icon(Icons.add, color: ColorStyles.blueColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                const Divider(
                  thickness: 1,
                  color: Color(0x3379797B),
                ),
                SizedBox(
                  height: 30.h,
                ),
                const OrderCheckOrBillWidget(),
                //const Spacer(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .10,
                ),
                InkWell(
                  onTap: () {
                    navigate_to(
                        context: context, widget: const CheckOutScreen());
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 77.h,
                    color: ColorStyles.blueColor,
                    child: Center(
                        child: Text(
                      'Go to checkout (60.25 \$)',
                      style: Styles.textstyle16.copyWith(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          );

          // SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       InkWell(
          //         onTap: () {
          //           Navigator.pop(context);
          //         },
          //         child: Row(
          //           children: [
          //             SizedBox(
          //               width: 32.w,
          //             ),
          //             IconButton(
          //                 onPressed: () {
          //                   Navigator.pop(context);
          //                 },
          //                 icon: const Icon(Icons.clear_sharp)),
          //             SizedBox(
          //               width: 8.w,
          //             ),
          //             Text('Basket', style: Styles.textstyle16),
          //           ],
          //         ),
          //       ),
          //       SizedBox(
          //         height: 32.h,
          //       ),

          //     ],
          //   ),
          // );
        },
      ),
    );
  }
}
