import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class InBoxScreen extends StatelessWidget {
  const InBoxScreen({super.key});

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
              'Inbox',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset('lib/core/assets/images/bigger_inBox.png'),
            SizedBox(
              height: 24.h,
            ),
            Text('Your inbox is empty', style: Styles.textstyle20),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'check your inbox regularly for cool discounts',
              style: Styles.textstyle16.copyWith(color: ColorStyles.greyColor),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
