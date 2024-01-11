import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles.dart';
import '../manager/cubit/delivery_screen_cubit.dart';
import 'widgets/delivery_card_list_view.dart';
import 'widgets/food_category_widget.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({super.key});

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeliveryScreenCubit(),
      child: BlocConsumer<DeliveryScreenCubit, DeliveryScreenStates>(
        listener: (context, state) {},
        builder: (context, state) {
          DeliveryScreenCubit cubit = DeliveryScreenCubit.get(context);

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
                    const DeliveryCardListViewWidget(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /* Row Location_And_SortBy_Method(BuildContext context) {
    return Row(
      children: [
        Image.asset('lib/core/assets/images/location.png'),
        SizedBox(
          width: 6.w,
        ),
        Text(
          'Cairo, Egypt',
          style: TextStyle(fontFamily: 'JosefinSans', fontSize: 14.sp),
          //style: Styles.textstyle14grey,
        ),
        const Spacer(),
        Text(
          'Sort by :',
          textAlign: TextAlign.center,
          // style: Styles.textstyle14grey,
          style: TextStyle(fontFamily: 'JosefinSans', fontSize: 14.sp),
        ),
        DropdownButtonHideUnderline(
          child: DropdownButton2<String>(
            isExpanded: false,
            hint: Text(
              'Select Item',
              style: TextStyle(
                fontSize: 14.sp,
                color: Theme.of(context).hintColor,
              ),
            ),
            items: locationsItem
                .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 14.sp,
                        ),
                      ),
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            },
            buttonStyleData: ButtonStyleData(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              height: 40.h,
              width: 140.w,
            ),
            menuItemStyleData: MenuItemStyleData(
              height: 40.h,
            ),
          ),
        ),
      ],
    );
  }
*/
}
