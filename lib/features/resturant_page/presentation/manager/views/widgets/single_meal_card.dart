import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';
import 'order_bottom_sheet.dart';

class SingleMealCardWidget extends StatelessWidget {
  const SingleMealCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        bottomSheetMethod(context, const OrderBottomSheet());
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
        ),
        child: Container(
          width: 357.w,
          height: 200.h,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0x4C79797B)),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 14.w,
              ),
              Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 19.h),
                  Text(
                    'Classic Margherita ',
                    style: Styles.textstyle20,
                  ),
                  SizedBox(
                    height: 12.h,
                  ),
                  SizedBox(
                    height: 80.h,
                    width: 195.w,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan in nisl nisi',
                      style: Styles.textstyle12,
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    '60.00 \$',
                    style: Styles.textstyle20.copyWith(color: kPrimaryColor),
                  ),
                ],
              ),
              const Spacer(),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  SizedBox(
                    // height: 200.h,
                    // width: 127.w,
                    child: Image.asset(
                      'lib/core/assets/images/single_pizza.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Container(
                        color: Colors.white,
                        child: Image.asset('lib/core/assets/images/plus.png')),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<dynamic> bottomSheetMethod(
      BuildContext context, Widget bottomSheetCOntent) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      isScrollControlled: true,
      useRootNavigator: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.all(18.0.h),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .87,
          child: bottomSheetCOntent,
        ),
      ),
    );
  }
}
