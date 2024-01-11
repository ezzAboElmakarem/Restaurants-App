import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'pick_up_resturants_card.dart';

class PickUpCardListView extends StatelessWidget {
  const PickUpCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.separated(
          itemBuilder: (context, index) => const PickUpResturantCard(),
          separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
          itemCount: 15),
    );
  }
}
