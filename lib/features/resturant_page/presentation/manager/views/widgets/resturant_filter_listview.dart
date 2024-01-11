import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/consts.dart';
import '../../../../../../core/styles.dart';

import '../../../../../test/cubit/test_cubit.dart';

// ignore: must_be_immutable
class ResturantFilterListView extends StatelessWidget {
  ResturantFilterListView({
    super.key,
    required this.filters,
  });

  final List<String> filters;
  bool isButton1Selected = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ToggleCategoryCubit(),
      child: BlocConsumer<ToggleCategoryCubit, String>(
        listener: (context, state) {},
        builder: (context, selectedButton) {
          // ToggleCategoryCubit cubit = ToggleCategoryCubit.get(context);

          return Container(
            width: 393.w,
            height: 47.h,
            decoration: BoxDecoration(color: ColorStyles.secondColor),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToggleCategoryCubit>()
                          .toggleCategoryName('popular');
                    },
                    child: Text(
                      'popular',
                      style: Styles.textstyle14.copyWith(
                        color: selectedButton == 'popular'
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToggleCategoryCubit>()
                          .toggleCategoryName('Vegetarian');
                    },
                    child: Text(
                      'Vegetarian',
                      style: Styles.textstyle14.copyWith(
                        color: selectedButton == 'Vegetarian'
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToggleCategoryCubit>()
                          .toggleCategoryName('fish');
                    },
                    child: Text(
                      'fish',
                      style: Styles.textstyle14.copyWith(
                        color: selectedButton == 'fish'
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToggleCategoryCubit>()
                          .toggleCategoryName('Meat Pizzas');
                    },
                    child: Text(
                      'Meat Pizzas',
                      style: Styles.textstyle14.copyWith(
                        color: selectedButton == 'Meat Pizzas'
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  TextButton(
                    onPressed: () {
                      context
                          .read<ToggleCategoryCubit>()
                          .toggleCategoryName('Cheese Pizzas');
                    },
                    child: Text(
                      'Cheese Pizzas',
                      style: Styles.textstyle14.copyWith(
                        color: selectedButton == 'Cheese Pizzas'
                            ? kPrimaryColor
                            : Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
    // Container(
    //   width: 393.w,
    //   height: 47.h,
    //   decoration: BoxDecoration(color: ColorStyles.thirdColor),
    //   child: Row(
    //     children: [
    //       SizedBox(
    //         width: 14.w,
    //       ),
    //       IconButton(
    //         onPressed: () {},
    //         icon: Icon(Icons.search, color: ColorStyles.textColor),
    //       ),
    //       Padding(
    //         padding: EdgeInsets.only(top: 8.h),
    //         child: SizedBox(
    //           width: 300.w,
    //           height: 35.h,
    //           child: ListView.builder(
    //             //  reverse: true,
    //             scrollDirection: Axis.horizontal,
    //             itemCount: filters.length,
    //             itemBuilder: (context, index) => RestursantFilterWidget(
    //               filterName: filters,
    //               index: index,
    //             ),
    //           ),
    //         ),
    //       ),
    //       // SizedBox(
    //       //   height: 20.h,
    //       //   width: 100.w,
    //       //   child: ListView.builder(
    //       //     scrollDirection: Axis.horizontal,
    //       //     itemCount: filters.length,
    //       //     itemBuilder: (context, index) {
    //       //       return RestursantFilterWidget(
    //       //         filterName: filters[index],
    //       //       );
    //       //     },
    //       //   ),
    //       // )
    //     ],
    //   ),
    // );
  }
}
