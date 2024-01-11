import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    // required this.categories,
    // required this.selected,
    // required this.index,
    /*required this.selected, required this.index*/
  });
  // final List<String> categories;
  // final bool selected;
  // final int index;
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.80,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 63.h,
            height: 24.h,
            decoration: ShapeDecoration(
              // color: selected ? Color(0xFFF24E1E) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
            ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Text(
                  'Pizza',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'JosefinSans',
                    fontWeight: FontWeight.w400,
                    //  height: 0.17,
                    //letterSpacing: 0.50,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
