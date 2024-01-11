import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/styles.dart';

class StoreBagWidget extends StatelessWidget {
  const StoreBagWidget({
    super.key,
    required this.numBackgroundColor,
  });
  final Color numBackgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.w,
      height: 32.h,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Image.asset('lib/core/assets/images/bag.png'),
          ),
          Positioned(
            left: 15.w,
            top: 16.h,
            child: ClipOval(
              child: Container(
                width: 14.w,
                height: 14.h,
                color: numBackgroundColor,
                child: Center(
                  child: Text(
                    '1',
                    style: Styles.textstyle10.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
