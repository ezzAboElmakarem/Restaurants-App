import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/shared_component/component.dart';
import '../../../../core/styles.dart';
import '../../../check_out_screen/presentation/views/widgets/text_form_field_widget.dart';

class SignInBottomSheet extends StatelessWidget {
  const SignInBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 16.h,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                children: [
                  SizedBox(
                    width: 8.w,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.clear_sharp)),
                  SizedBox(
                    width: 8.w,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text('Sign in',
                      style: Styles.textstyle18
                          .copyWith(fontWeight: FontWeight.w400)),
                ],
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Container(
              width: 330.w,
              height: 65.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: ColorStyles.lightGreyColor),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/core/assets/images/google.png'),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Sign in with Google',
                    style: Styles.textstyle16
                        .copyWith(color: ColorStyles.greyColor),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Container(
              width: 330.w,
              height: 65.h,
              decoration: ShapeDecoration(
                color: ColorStyles.faceBookBlueColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: ColorStyles.lightGreyColor),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('lib/core/assets/images/facebook.png'),
                  SizedBox(
                    width: 12.w,
                  ),
                  Text(
                    'Sign in with Facebook',
                    style: Styles.textstyle16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customDivider(),
                Text(
                  ' or ',
                  style:
                      Styles.textstyle16.copyWith(color: ColorStyles.greyColor),
                ),
                customDivider(),
              ],
            ),
            SizedBox(
              height: 60.h,
            ),
            TextFormFieldmethod(
              type: TextInputType.emailAddress,
              title: 'Email address or username',
            ),
            SizedBox(
              height: 24.h,
            ),
            TextFormFieldmethod(
              type: TextInputType.visiblePassword,
              title: 'Password',
              isPassword: true,
              forgetPassword: InkWell(
                onTap: () {},
                child: Text(
                  'Forgot password ?',
                  style: Styles.textstyle14.copyWith(color: kPrimaryColor),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Container(
              width: 330.w,
              height: 65.h,
              decoration: ShapeDecoration(
                color: ColorStyles.blueColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: ColorStyles.lightGreyColor),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign in',
                    style: Styles.textstyle16.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'Create account',
                style: Styles.textstyle14.copyWith(color: kPrimaryColor),
              ),
            ),
            SizedBox(
              height: 135.h,
            ),
          ],
        ),
      ),
    );
  }
}
