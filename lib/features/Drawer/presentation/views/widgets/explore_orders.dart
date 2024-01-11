import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import 'explore_order_card_widget.dart';

class ExploreOrdersScreen extends StatelessWidget {
  const ExploreOrdersScreen({super.key});

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
              'Orders',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                width: 400.w,
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 12.h),
                  itemCount: 3,
                  itemBuilder: (context, index) =>
                      const ExploreOrderCardWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
