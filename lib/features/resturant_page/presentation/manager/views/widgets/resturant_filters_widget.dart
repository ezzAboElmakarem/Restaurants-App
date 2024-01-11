import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';
import '../../cubit/resturant_page_cubit.dart';

// ignore: must_be_immutable
class RestursantFilterWidget extends StatelessWidget {
  RestursantFilterWidget({
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
      create: (context) => ResturantPageCubit(),
      child: BlocConsumer<ResturantPageCubit, ResturantPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          ResturantPageCubit cubit = ResturantPageCubit.get(context);

          return InkWell(
            onTap: () {
              isPressed = !isPressed;
              cubit.selectFilter();
            },
            child: SizedBox(
              width: 88.w,
              height: 22.h,
              child: Center(
                child: Text(
                  filterName[index],
                  style: Styles.textstyle16.copyWith(
                      fontWeight: FontWeight.w400,
                      color: isPressed ? kPrimaryColor : Colors.black),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
