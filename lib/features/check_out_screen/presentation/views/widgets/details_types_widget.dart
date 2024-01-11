import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

// ignore: must_be_immutable
class DetailsTypesWidget extends StatelessWidget {
  DetailsTypesWidget(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.subTitle1,
      this.subTitle2,
      this.function,
      required this.successImage,
      this.height});

  final String imageUrl, title, subTitle1;
  String? subTitle2;
  final void Function()? function;
  bool successImage;
  double? height;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: 320.w,
        height: height ?? 96.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: ColorStyles.lightGreyColor,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 5.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 13.w,
              ),
              Image.asset(imageUrl),
              SizedBox(
                width: 40.w,
              ),
              // const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Styles.textstyle16,
                  ),
                  Text(
                    subTitle1,
                    style: Styles.textstyle12.copyWith(
                        color: ColorStyles.greyColor,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    subTitle2 ?? '',
                    style: Styles.textstyle12.copyWith(
                        color: ColorStyles.greyColor,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const Spacer(),
              // SizedBox(
              //   width: 30.w,
              // ),
              successImage
                  ? Image.asset('lib/core/assets/images/success.png')
                  : SizedBox(
                      width: 0.w,
                    ),
              SizedBox(
                width: 12.w,
              ),
              Image.asset('lib/core/assets/images/right_arrow.png'),
              SizedBox(
                width: 13.w,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
