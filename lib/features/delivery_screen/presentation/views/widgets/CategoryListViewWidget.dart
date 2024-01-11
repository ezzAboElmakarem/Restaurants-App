import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'category_widget.dart';

class CategoryListViewWidget extends StatelessWidget {
  const CategoryListViewWidget({
    super.key,
    required this.foodCategories,
  });

  final List<String> foodCategories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      child: Container(
        width: double.infinity,
        height: 26.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: foodCategories.length,
          itemBuilder: (context, index) {
            return CategoryWidget(
                // categories: foodCategories,
                // selected: false,
                // index: index,
                );
          },
        ),
      ),
    );
  }
}
