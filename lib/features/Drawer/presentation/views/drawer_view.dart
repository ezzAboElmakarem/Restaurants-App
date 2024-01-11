import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/favourites_screen.dart';
import 'widgets/inBox_screen.dart';
import 'widgets/orders_screen.dart';
import 'widgets/personal_data.dart';
import '../../../register_create_account/presentation/views/register_create_account.dart';
import '../../../sign_in/presentaion/views/sign_in_bottom_sheet.dart';
import '../../../../core/shared_component/component.dart';
import 'widgets/language_section_with_value.dart';
import 'widgets/nationalty_section_with_values.dart';
import 'widgets/select_country_page.dart';
import 'widgets/select_language_page.dart';
import 'widgets/setting_row_widget.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

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
    return Drawer(
      backgroundColor: const Color(0xFFFFF2EF),
      width: 280.w,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160.h,
              width: 280.w,
              color: kPrimaryColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 9.w,
                  ),
                  Image.asset('lib/core/assets/images/profile_pic.png'),
                  SizedBox(
                    width: 9.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi there!',
                          textAlign: TextAlign.center,
                          style: Styles.textstyle20.copyWith(
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 12.h,
                      ),
                      InkWell(
                        onTap: () {
                          navigate_to(
                              context: context,
                              widget: const PersonalDataScreen());
                        },
                        child: Text('View personal information',
                            textAlign: TextAlign.center,
                            style: Styles.textstyle14.copyWith(
                              color: Colors.white,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                SizedBox(
                  width: 11.w,
                ),
                InkWell(
                  onTap: () {
                    bottomSheetMethod(
                      context: context,
                      bottomSheetContent: const SignInBottomSheet(),
                    );
                  },
                  child: Container(
                    width: 120.w,
                    height: 60.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x4C79797B)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Sign in',
                        style: Styles.textstyle14.copyWith(
                          color: ColorStyles.blueColor,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                InkWell(
                  onTap: () {
                    bottomSheetMethod(
                        context: context,
                        bottomSheetContent: const RegisterCreateAccountScreen(),
                        height: MediaQuery.of(context).size.height);
                  },
                  child: Container(
                    width: 120.w,
                    height: 60.h,
                    decoration: ShapeDecoration(
                      color: ColorStyles.blueColor,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0x4C79797B)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: Styles.textstyle14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                InkWell(
                  onTap: () {
                    navigate_to(context: context, widget: const InBoxScreen());
                  },
                  child: const SettingRowWidget(
                    settingName: 'Inbox',
                    iconUrl: 'lib/core/assets/images/inBox.png',
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  onTap: () {
                    navigate_to(context: context, widget: const OrdersScreen());
                  },
                  child: const SettingRowWidget(
                    settingName: 'Orders',
                    iconUrl: 'lib/core/assets/images/orderBag.png',
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                  onTap: () {
                    navigate_to(
                        context: context, widget: const FavouritesScreen());
                  },
                  child: const SettingRowWidget(
                    settingName: 'Favourites',
                    iconUrl: 'lib/core/assets/images/heart.png',
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'Punten',
                  iconUrl: 'lib/core/assets/images/present.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'Gift Cards',
                  iconUrl: 'lib/core/assets/images/giftCard.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'Need help?',
                  iconUrl: 'lib/core/assets/images/help.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'How are we doing?',
                  iconUrl: 'lib/core/assets/images/like.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                    onTap: () {
                      navigate_to(
                          context: context, widget: const SelectCountryPage());
                    },
                    child: Nationalty_Section_With_Values(
                      iconUrl:
                          'lib/core/assets/images/carbon_location-filled.png',
                      settingName: 'Country',
                      flagValue: 'lib/core/assets/images/germany.png',
                      countryValue: 'Germany',
                    )
                    /* const SettingRowWidget(
                    settingName: 'Country',
                    iconUrl:
                        'lib/core/assets/images/carbon_location-filled.png',
                  ),*/
                    ),
                SizedBox(
                  height: 5.h,
                ),
                InkWell(
                    onTap: () {
                      navigate_to(
                          context: context,
                          widget: const SelectLangauagePage());
                    },
                    child: const LanguageSectionWithValue(
                      iconUrl: 'lib/core/assets/images/language.png',
                      languageValue: 'Language',
                    )

                    /*const SettingRowWidget(
                    settingName: 'Language',
                    iconUrl: 'lib/core/assets/images/language.png',
                  ),*/
                    ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'Become a courier ?',
                  iconUrl:
                      'lib/core/assets/images/ic_round-delivery-dining.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
                const SettingRowWidget(
                  settingName: 'For Business',
                  iconUrl: 'lib/core/assets/images/business.png',
                ),
                SizedBox(
                  height: 5.h,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types, must_be_immutable

