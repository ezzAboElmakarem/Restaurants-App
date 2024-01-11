import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

Widget TextFormFieldmethod({
  required TextInputType? type,
  required String? title,
  int? numOfLines,
  int? maxLines,
  double? height,
  double? width,
  Widget? forgetPassword,
  bool isPassword = false,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12.w),
            child: Text(
              title!,
              style: Styles.textstyle16.copyWith(fontWeight: FontWeight.w400),
            ),
          ),
          const Spacer(),
          forgetPassword ?? SizedBox(width: 0.w),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 12.w, top: 8.h),
        child: Container(
          height: height?.h ?? 46.h,
          width: width?.h ?? 330.w,
          child: TextFormField(
            obscureText: isPassword,
            textAlignVertical: TextAlignVertical.center,
            maxLines: numOfLines ?? 1,
            maxLength: maxLines ?? null,
            keyboardType: type,
            // cursorHeight: 25.h,
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorStyles.textColor,
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.w,
                  color: ColorStyles.lightGreyColor,
                ),
              ),
            ),
          ),
        ),
      ),
    ],
  );
}
