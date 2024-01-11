import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/styles.dart';

// ignore: camel_case_types, must_be_immutable
class Nationalty_Section_With_Values extends StatelessWidget {
  Nationalty_Section_With_Values({
    super.key,
    required this.iconUrl,
    required this.settingName,
    this.flagValue,
    required this.countryValue,
  });

  final String iconUrl, settingName, countryValue;
  String? flagValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 228.w,
      height: 36.h,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 12.w,
          ),
          Image.asset(
            iconUrl,
            color: Colors.black,
          ),
          SizedBox(
            width: 25.w,
          ),
          Text(
            settingName,
            style: Styles.textstyle14,
          ),
          const Spacer(),
          Image.asset(flagValue!),
          SizedBox(
            width: 8.w,
          ),
          Text(
            countryValue,
            style: Styles.textstyle14
                .copyWith(color: Colors.black.withOpacity(0.5)),
          ),
          SizedBox(
            width: 13.w,
          ),
        ],
      ),
    );
  }
}
