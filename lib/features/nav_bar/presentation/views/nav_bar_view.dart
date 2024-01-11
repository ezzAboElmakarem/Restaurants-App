import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/assets/consts.dart';
import '../../../../core/styles.dart';
import '../../../delivery_screen/presentation/views/delivery_screen.dart';
import '../../../search/presentation/views/search_page.dart';

class NavBarView extends StatefulWidget {
  NavBarView({super.key});

  @override
  State<NavBarView> createState() => _NavBarViewState();
}

class _NavBarViewState extends State<NavBarView> {
  int currentIndex = 0;

  List<Widget> screens = [
    const SearchPage(),
    const DeliveryScreen(),
    const SearchPage(),
    const SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      /* appBar: AppBar(
        backgroundColor: ColorStyles.selectedColor,
        title: userId == null
            ? TextButton(
                onPressed: () {
                  ordernow = false;
                  navigate_to(
                      context: context, widget: const LoginScreenView());
                },
                child: Text('تسجيل دخول', style: Styles.textstyle20),
              )
            : Text('مرحبا بك', style: Styles.textstyle20),
        actions: [
          AppbarText(),
          SizedBox(
            width: 8.w,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4.h),
            child: Icon(
              Icons.person,
              size: 40.sp,
            ),
          ),
          SizedBox(
            width: 6.w,
          )
        ],
      ),
      */ /*AppBar(
        centerTitle: true,
        title: currentIndex == 2
            ? Padding(
                padding: EdgeInsets.only(top: 8.0.h),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100.h,
                ),
              )
            : const SizedBox(),
        toolbarHeight: currentIndex == 2 ? 120.h : 50.h,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor:
            currentIndex == 2 ? ColorStyles.bottomColor : Colors.white,
        surfaceTintColor: Colors.white,
      ),
      */
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorStyles.secondColor,
        backgroundColor: Colors.white,
        //ColorStyles.bottomColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 32.h,
        selectedLabelStyle:
            Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
                /*currentIndex != 0
                ? Icons.person_2_outlined
                : */
                Icons.format_align_left_sharp),
            label: 'Filter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                /*currentIndex != 2 ? Icons.home_outlined :*/ Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
