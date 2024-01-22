import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_project/features/check_out_screen/data/repos/check_out_repo_imp.dart';
import 'package:resturant_project/features/check_out_screen/presentation/manager/cubit/payment_cubit.dart';
import 'package:resturant_project/features/check_out_screen/presentation/views/widgets/payment_widget.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/shared_component/component.dart';
import '../../../../core/styles.dart';
import '../../../add_coupon_code_screen/presentation/views/add_Coupon_screen.dart';
import 'widgets/details_types_widget.dart';
import 'widgets/personal_details_screen.dart';
import '../../../resturant_page/presentation/manager/views/widgets/store_bag_widget.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({super.key});

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  String? selectedValue;
  bool isSwitched = false;

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
            // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    DetailsTypesWidget(
                      successImage: true,
                      imageUrl: 'lib/core/assets/images/home.png',
                      title: 'Delivery to',
                      subTitle1: 'Burgemeester Falkeng 22',
                      subTitle2: '93842LD Heerrenveen',
                      function: () {
                        navigate_to(
                            context: context,
                            widget: const PersonalDetailsScreen());
                      },
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    DetailsTypesWidget(
                      successImage: true,
                      imageUrl: 'lib/core/assets/images/smiley.png',
                      title: 'Personal details',
                      subTitle1: 'seif',
                      subTitle2: '+20103252524',
                      function: () {
                        navigate_to(
                            context: context,
                            widget: const PersonalDetailsScreen());
                      },
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    DetailsTypesWidget(
                      successImage: true,
                      imageUrl: 'lib/core/assets/images/on-time.png',
                      title: 'Delivery time',
                      subTitle1: 'as soon as possible',
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    BlocProvider(
                        create: (context) => PaymentCubit(CheckoutRepoImpl()),
                        child: PayementWidget(
                          isLoading: false,
                        )),
                    SizedBox(
                      height: 24.h,
                    ),
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
                        const Spacer(),
                        Transform.scale(
                          scale: .7,
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
              SizedBox(
                height: 40.h,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 77.h,
                  color: ColorStyles.blueColor,
                  child: Center(
                    child: Text(
                      'Order and pay (60.25 \$)',
                      style: Styles.textstyle18.copyWith(color: Colors.white),
                    ),
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
