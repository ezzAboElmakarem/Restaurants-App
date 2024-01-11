import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class ExploreFavouriteCardWidget extends StatelessWidget {
  const ExploreFavouriteCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.w,
      height: 120.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: ColorStyles.lightGreyColor),
          borderRadius: BorderRadius.circular(2),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 110.w,
            height: 120.h,
            child: Image.asset('lib/core/assets/images/logo3.png'),
          ),
          const SizedBox(
            width: 21,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pizza Hub',
                style: Styles.textstyle16,
              ),
              SizedBox(
                height: 8.h,
              ),
              Text(
                'Egyptian, Pizzas',
                style: Styles.textstyle14.copyWith(
                    color: ColorStyles.greyColor, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child:
                        Image.asset('lib/core/assets/images/grey_location.png'),
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
    );
  }
}
