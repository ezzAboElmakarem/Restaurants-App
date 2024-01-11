import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import 'explore_favourite_card_widget.dart';

class ExploreFavouriteScreen extends StatelessWidget {
  const ExploreFavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Favourites',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Cairo, Egypt',
                style: Styles.textstyle18,
              ),
              SizedBox(
                height: 24.h,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: 370.w,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemCount: 3,
                  itemBuilder: (context, index) =>
                      const ExploreFavouriteCardWidget(),
                ),
              ),
              // Container(
              //   width: 360.w,
              //   height: 120.h,
              //   decoration: ShapeDecoration(
              //     color: Colors.white,
              //     shape: RoundedRectangleBorder(
              //       side:
              //           BorderSide(width: 1, color: ColorStyles.lightGreyColor),
              //       borderRadius: BorderRadius.circular(2),
              //     ),
              //   ),
              //   child: Row(
              //     children: [
              //       Container(
              //         width: 110.w,
              //         height: 120.h,
              //         child: Image.asset('lib/core/assets/images/logo3.png'),
              //       ),
              //       SizedBox(
              //         width: 21,
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: [
              //           Text(
              //             'Pizza Hub',
              //             style: Styles.textstyle16,
              //           ),
              //           SizedBox(
              //             height: 8.h,
              //           ),
              //           Text(
              //             'Egyptian, Pizzas',
              //             style: Styles.textstyle14.copyWith(
              //                 color: ColorStyles.greyColor,
              //                 fontWeight: FontWeight.w400),
              //           ),
              //           SizedBox(
              //             height: 8.h,
              //           ),
              //           Row(
              //             children: [
              //               SizedBox(
              //                 width: 20.w,
              //                 height: 20.h,
              //                 child: Image.asset(
              //                     'lib/core/assets/images/Location2.png'),
              //               ),
              //               SizedBox(
              //                 width: 8.w,
              //               ),
              //               Text(
              //                 'Cairo, Egypt',
              //                 style: Styles.textstyle12.copyWith(
              //                     fontWeight: FontWeight.w400,
              //                     color: ColorStyles.greyColor),
              //               ),
              //             ],
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
