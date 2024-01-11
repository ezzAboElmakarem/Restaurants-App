import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/shared_component/component.dart';
import '../../../../../core/styles.dart';
import '../../../../add_coupon_code_screen/presentation/views/add_Coupon_screen.dart';
import 'details_types_widget.dart';
import 'text_form_field_widget.dart';
import '../../../../resturant_page/presentation/manager/views/widgets/store_bag_widget.dart';
import '../../../../sign_in/presentaion/views/sign_in_bottom_sheet.dart';

class PersonalDetailsScreen extends StatefulWidget {
  const PersonalDetailsScreen({super.key});

  @override
  State<PersonalDetailsScreen> createState() => _PersonalDetailsScreenState();
}

class _PersonalDetailsScreenState extends State<PersonalDetailsScreen> {
  String? selectedValue;

  bool isSwitched = false;

  Future<dynamic> bottomSheetMethod({
    required BuildContext context,
    required Widget bottomSheetContent,
    double? height,
  }) {
    return showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      isScrollControlled: true,
      useRootNavigator: true,
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.all(18.0.h),
        child: SizedBox(
          height: height ?? MediaQuery.of(context).size.height * .85,
          child: bottomSheetContent,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyles.secondColor,
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
              'Complete your order',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            StoreBagWidget(numBackgroundColor: ColorStyles.blueColor),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Do you have an account?',
                          style: Styles.textstyle16.copyWith(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        MaterialButton(
                          height: 48.h,
                          minWidth: 110.w,
                          onPressed: () {
                            bottomSheetMethod(
                              context: context,
                              bottomSheetContent: const SignInBottomSheet(),
                            );
                          },
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: ColorStyles.lightGreyColor),
                          ),
                          child: Text(
                            'Sign in',
                            style: Styles.textstyle14
                                .copyWith(color: ColorStyles.blueColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Divider(
                        thickness: 2.w,
                        color: ColorStyles.lightGreyColor,
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Delivery address',
                      style: Styles.textstyle16,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.streetAddress,
                      title: 'Street and house number',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.number,
                      title: 'Postcode',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.text,
                      title: 'City',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.name,
                      title: 'Company name (optional)',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                        type: TextInputType.text,
                        title: 'Add note (optional)',
                        numOfLines: 4,
                        height: 150.h,
                        maxLines: 150),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      'Personal details',
                      style: Styles.textstyle16,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.name,
                      title: 'First and last name',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.emailAddress,
                      title: 'Email Address',
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormFieldmethod(
                      type: TextInputType.phone,
                      title: 'Phone number',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45.h,
              ),
              Container(
                height: 500.h,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 28.h,
                      ),
                      DetailsTypesWidget(
                        imageUrl: 'lib/core/assets/images/on-time.png',
                        title: 'Delivery time',
                        subTitle1: 'as soon as possible',
                        successImage: false,
                        height: 80.h,
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      DetailsTypesWidget(
                        successImage: false,
                        imageUrl: 'lib/core/assets/images/paypal.png',
                        title: 'Pay with',
                        subTitle1: 'PayPal or else',
                        height: 80.h,
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        child: Column(
                          children: [
                            InkWell(
                              onTap: () {
                                navigate_to(
                                  context: context,
                                  widget: const AddCouponScreen(),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Add voucher code',
                                    style: Styles.textstyle14.copyWith(
                                        color: ColorStyles.blueColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 24.h,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Receive discounts, loyalty offers and other updates',
                                  style: Styles.textstyle10.copyWith(
                                      color: ColorStyles.greyColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Transform.scale(
                                  scale: .6,
                                  child: Switch(
                                    //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                    autofocus: false,
                                    activeTrackColor: kPrimaryColor,
                                    activeColor: Colors.white,
                                    inactiveThumbColor: ColorStyles.textColor,
                                    inactiveTrackColor: Colors.white,
                                    value: isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        isSwitched = value;
                                        selectedValue;
                                      });
                                    },
                                  ),
                                ),
                                SizedBox(
                                  width: 16.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            Text(
                              'By clicking “Order and pay” you agree with the contents of the shopping cart, the data you filled out, our privacy statement and terms of use ',
                              style: Styles.textstyle10.copyWith(
                                  color: ColorStyles.greyColor,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 77.h,
                          color: ColorStyles.blueColor,
                          child: Center(
                            child: Text(
                              'Order and pay (60.25 \$)',
                              style: Styles.textstyle18
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
