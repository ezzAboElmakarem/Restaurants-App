import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../delivery_screen/presentation/views/widgets/food_category_widget.dart';
import '../manager/cubit/pick_up_screen_cubit.dart';
import '../../../delivery_screen/presentation/views/widgets/pick_up_list_view.dart';
import '../../../../core/styles.dart';

class PickUpScreen extends StatefulWidget {
  const PickUpScreen({super.key});

  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  final List<String> foodCategories = [
    'All',
    'Pizza',
    'Burgers',
    'Sushi',
    'Bakery',
    'Pizza',
    'Burgers',
    'Sushi',
    'Bakery',
  ];

  final bool selected = true;
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PickUpScreenCubit(),
      child: BlocConsumer<PickUpScreenCubit, PickUpScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          PickUpScreenCubit cubit = PickUpScreenCubit.get(context);

          return Scaffold(
            // drawer: const DrawerWidget(),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: SizedBox(
                        width: 600.w,
                        height: 35.h,
                        child: ListView.builder(
                          //  reverse: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: cubit.filters.length,
                          itemBuilder: (context, index) => FoodCategoryWidget(
                            filterName: cubit.filters,
                            index: index,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Padding(
                      padding: EdgeInsets.only(right: 140.w),
                      child: Text(
                        'Order from 75 restaurants',
                        style: Styles.textstyle16,
                      ),
                    ),
                    SizedBox(height: 13.h),
                    const PickUpCardListView(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
