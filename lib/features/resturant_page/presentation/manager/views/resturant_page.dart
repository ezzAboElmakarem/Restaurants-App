import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_component/component.dart';
import '../../../../offers_bottom_sheet/presentation/views/offer_bottom_sheet.dart';
import '../cubit/resturant_page_cubit.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import 'widgets/delivery_pickup_toggle.dart';
import 'widgets/resturant_filter_listview.dart';
import 'widgets/single_meal_card.dart';

class ResturantPage extends StatelessWidget {
  ResturantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResturantPageCubit(),
      child: BlocConsumer<ResturantPageCubit, ResturantPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ResturantPageCubit cubit = ResturantPageCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              //  physics: const NeverScrollableScrollPhysics(),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Center(
                  //   child: Text(
                  //     'Resturant Page',
                  //     style: Styles.textstyle40,
                  //   ),
                  // ),

                  Container(
                    height: 300.h,
                    width: 393.w,
                    child: Stack(children: [
                      SizedBox(
                        height: 217.h,
                        width: 393.w,
                        child: Image.asset(
                            'lib/core/assets/images/pizza_background_image.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        height: 395.h,
                        left: 130.w,
                        child: Container(
                          width: 128.w,
                          height: 125.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              'lib/core/assets/images/logo3.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 225.h,
                        left: 293.w,
                        child: InkWell(
                          onTap: () {
                            bottomSheetMethod(
                                context: context,
                                bottomSheetContent:
                                    OffersBottomSheet(initialIndex: 0),
                                height:
                                    MediaQuery.of(context).size.height * .70);
                          },
                          child: Container(
                            height: 40.h,
                            width: 36.w,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: Color(0x4C79797B),
                                ),
                              ),
                            ),
                            child: Image.asset(
                                'lib/core/assets/images/info_symbol.png'),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 225.h,
                        left: 328.w,
                        child: InkWell(
                          onTap: () {
                            cubit.changeFavourite();
                            print(cubit.isFavourite);
                            cubit.isFavourite
                                ? cubit.favouriteImge =
                                    'lib/core/assets/images/orange_heart.png'
                                : cubit.favouriteImge =
                                    'lib/core/assets/images/empty_heart.png';
                          },
                          child: Container(
                            height: 40.h,
                            width: 36.w,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  color: Color(
                                      0x4C79797B), //empty_heart  //orange_heart   isFavourite  'lib/core/assets/images/empty_heart.png'
                                ),
                              ),
                            ),
                            child: Image.asset(cubit.favouriteImge),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 23.w,
                        top: 35.h,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Image.asset(
                                'lib/core/assets/images/back_button.png')),
                      ),
                    ]),
                  ),
                  //********************************************************************************************************************************************************************************* */

                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),
                      Text(
                        'Vincenzio',
                        style: Styles.textstyle24,
                      ),
                      const Spacer(),
                      Delivery_Pickup_Toggle(),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                  //********************************************************************************************************************************************************************************* */
                  SizedBox(
                    height: 4.h,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 24.w,
                      ),

                      RatingBar.builder(
                        ignoreGestures: true,
                        itemSize: 27.sp,
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 2.w),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: kPrimaryColor,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      // SizedBox(
                      //   height: 30.h,
                      //   width: 150.w,
                      //   child: ListView.builder(
                      //     scrollDirection: Axis.horizontal,
                      //     itemCount: 5,
                      //     itemBuilder: (context, index) {
                      //       return Image.asset(
                      //           'lib/core/assets/images/symbols_star.png');
                      //     },
                      //   ),
                      // ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text(
                        '(548 reviews)',
                        style: Styles.textstyle14
                            .copyWith(color: ColorStyles.greyColor),
                      )
                    ],
                  ),
//********************************************************************************************************************************************************************************************************* */
                  Padding(
                    padding: EdgeInsets.only(left: 22.w, top: 12.h),
                    child: Text(
                      'Offers',
                      style: Styles.textstyle16,
                    ),
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.w),
                    child: InkWell(
                      onTap: () {
                        bottomSheetMethod(
                            context: context,
                            bottomSheetContent:
                                OffersBottomSheet(initialIndex: 2),
                            height: MediaQuery.of(context).size.height * .70);
                      },
                      child: Container(
                        width: 213.w,
                        height: 120.h,
                        color: ColorStyles.yellowColor,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 9.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'December Deal',
                                style: Styles.textstyle16,
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                                style: Styles.textstyle14
                                    .copyWith(color: ColorStyles.greyColor),
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Text(
                                'Delivery & Pickup',
                                style: Styles.textstyle14,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),

//********************************************************************************************************************************************************************************************************* */
                  SizedBox(
                    height: 12.h,
                  ),
                  ResturantFilterListView(filters: cubit.filters),
//******************************************************************************************************************************************************************************************* */
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                      // shrinkWrap: false,
                      itemCount: 25,
                      separatorBuilder: (context, index) => SizedBox(
                        height: 12.h,
                      ),
                      itemBuilder: (context, index) {
                        return const SingleMealCardWidget();
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
