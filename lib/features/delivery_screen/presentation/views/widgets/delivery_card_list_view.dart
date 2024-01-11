import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'delivery_resturant_card.dart';

class DeliveryCardListViewWidget extends StatelessWidget {
  const DeliveryCardListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: ListView.separated(
          itemBuilder: (context, index) => const DeliveryResturantCard(),
          separatorBuilder: (context, index) => SizedBox(
                height: 12.h,
              ),
          itemCount: 15),
    );
  }
}
