import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import '../../manager/cubit/pick_up_screen_cubit.dart';

// ignore: must_be_immutable
class FoodCategoryWidget extends StatelessWidget {
  FoodCategoryWidget({
    super.key,
    required this.filterName,
    required this.index,
  });
  final List<String> filterName;
  bool isPressed = false;
  final int index;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickUpScreenCubit(),
      child: BlocConsumer<PickUpScreenCubit, PickUpScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          PickUpScreenCubit cubit = PickUpScreenCubit.get(context);

          return InkWell(
            onTap: () {
              isPressed = !isPressed;
              cubit.selectFilter();
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Container(
                width: 80.w,
                height: 20.h,
                decoration: BoxDecoration(
                    color: isPressed ? kPrimaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    filterName[index],
                    style: Styles.textstyle16.copyWith(
                        fontWeight: FontWeight.w400,
                        color: isPressed ? Colors.white : Colors.black),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
