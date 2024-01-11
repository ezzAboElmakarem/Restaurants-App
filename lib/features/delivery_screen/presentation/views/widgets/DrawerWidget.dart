// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import '../../../../../core/assets/consts.dart';
// import '../../../../../core/styles.dart';

// class DrawerWidget extends StatelessWidget {
//   const DrawerWidget({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: const Color(0xFFFFF2EF),
//       width: 280.w,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             Container(
//               height: 160.h,
//               width: 280.w,
//               color: kPrimaryColor,
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     width: 9.w,
//                   ),
//                   Image.asset('lib/core/assets/images/profile_pic.png'),
//                   SizedBox(
//                     width: 9.w,
//                   ),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('Hi there!',
//                           textAlign: TextAlign.center,
//                           style: Styles.textstyle20.copyWith(
//                             color: Colors.white,
//                           )),
//                       SizedBox(
//                         height: 12.h,
//                       ),
//                       Text('View personal information',
//                           textAlign: TextAlign.center,
//                           style: Styles.textstyle14.copyWith(
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 12.h),
//             Row(
//               children: [
//                 SizedBox(
//                   width: 11.w,
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Container(
//                     width: 110,
//                     height: 48,
//                     decoration: ShapeDecoration(
//                       color: Colors.white,
//                       shape: RoundedRectangleBorder(
//                         side: const BorderSide(
//                             width: 1, color: Color(0x4C79797B)),
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Sign in',
//                         style: Styles.textstyle14.copyWith(
//                           color: const Color(0xFF0066FF),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 8.w,
//                 ),
//                 InkWell(
//                   onTap: () {},
//                   child: Container(
//                     width: 110,
//                     height: 48,
//                     decoration: ShapeDecoration(
//                       color: const Color(0xFF0066FF),
//                       shape: RoundedRectangleBorder(
//                         side: const BorderSide(
//                             width: 1, color: Color(0x4C79797B)),
//                         borderRadius: BorderRadius.circular(4),
//                       ),
//                     ),
//                     child: Center(
//                       child: Text(
//                         'Create Account',
//                         style: Styles.textstyle14.copyWith(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 12.h,
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: [
//                 const SettingRowWidget(
//                   settingName: 'Inbox',
//                   iconUrl: 'lib/core/assets/images/inBox.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Orders',
//                   iconUrl: 'lib/core/assets/images/orderBag.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Favourites',
//                   iconUrl: 'lib/core/assets/images/heart.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Punten',
//                   iconUrl: 'lib/core/assets/images/present.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Gift Cards',
//                   iconUrl: 'lib/core/assets/images/giftCard.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Need help?',
//                   iconUrl: 'lib/core/assets/images/help.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'How are we doing?',
//                   iconUrl: 'lib/core/assets/images/like.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Country',
//                   iconUrl: 'lib/core/assets/images/carbon_location-filled.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Language',
//                   iconUrl: 'lib/core/assets/images/language.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'Become a courier ?',
//                   iconUrl:
//                       'lib/core/assets/images/ic_round-delivery-dining.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//                 const SettingRowWidget(
//                   settingName: 'For Business',
//                   iconUrl: 'lib/core/assets/images/business.png',
//                 ),
//                 SizedBox(
//                   height: 5.h,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SettingRowWidget extends StatelessWidget {
//   const SettingRowWidget({
//     super.key,
//     required this.iconUrl,
//     required this.settingName,
//   });

//   final String iconUrl, settingName;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 228.w,
//       height: 36.h,
//       decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(
//             width: 12.w,
//           ),
//           Image.asset(
//             iconUrl,
//             color: Colors.black,
//           ),
//           SizedBox(
//             width: 25.w,
//           ),
//           Text(
//             settingName,
//             style: Styles.textstyle14,
//           ),
//         ],
//       ),
//     );
//   }
// }
