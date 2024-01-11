import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles.dart';

class SettingRowWidget extends StatelessWidget {
  const SettingRowWidget({
    super.key,
    required this.iconUrl,
    required this.settingName,
  });

  final String iconUrl, settingName;
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
        ],
      ),
    );
  }
}
