import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';
import '../../cubit/resturant_page_cubit.dart';

// ignore: camel_case_types, must_be_immutable
class Delivery_Pickup_Toggle extends StatelessWidget {
  Delivery_Pickup_Toggle({
    super.key,
  });
  bool isButton1Selected = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ResturantPageCubit(),
      child: BlocConsumer<ResturantPageCubit, ResturantPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ResturantPageCubit cubit = ResturantPageCubit.get(context);
          return Container(
            height: 40.h,
            width: 170.w,
            decoration: BoxDecoration(color: ColorStyles.secondColor),
            child: Row(
              children: [
                SizedBox(
                  width: 4.w,
                ),
                InkWell(
                  onTap: () {
                    isButton1Selected = true;
                    cubit.emitState();
                  },
                  child: Container(
                    width: 78,
                    height: 28,
                    decoration: BoxDecoration(
                        color: isButton1Selected
                            ? Colors.white
                            : ColorStyles.secondColor),
                    child: Row(
                      children: [
                        Image.asset('lib/core/assets/images/bike.png'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Text(
                              'Delivery',
                              style: Styles.textstyle10,
                            ),
                            Text(
                              'from 12:30',
                              style: Styles.textstyle8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    isButton1Selected = false;
                    cubit.emitState();
                  },
                  child: Container(
                    width: 78.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                        color: !isButton1Selected
                            ? Colors.white
                            : ColorStyles.secondColor),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 3.w,
                        ),
                        Image.asset('lib/core/assets/images/pickup.png'),
                        SizedBox(
                          width: 4.w,
                        ),
                        Column(
                          children: [
                            Text(
                              'Pickup',
                              style: Styles.textstyle10,
                            ),
                            Text(
                              'from 14:30',
                              style: Styles.textstyle8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
