import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/styles.dart';

class LanguageSectionWithValue extends StatelessWidget {
  const LanguageSectionWithValue({
    super.key,
    required this.iconUrl,
    required this.languageValue,
  });
  final String iconUrl, languageValue;

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
            'Language',
            style: Styles.textstyle14,
          ),
          const Spacer(),
          Text(
            languageValue,
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
