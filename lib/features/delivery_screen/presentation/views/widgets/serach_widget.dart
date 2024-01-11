import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/consts.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    super.key,
    required this.scaffoldkey,
  });

  final GlobalKey<ScaffoldState> scaffoldkey;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360.w,
        height: 45.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: ColorStyles.greyColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w, /*vertical: 5.h*/
              ),
              child: IconButton(
                icon: Icon(Icons.menu, size: 27.sp),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                  // scaffoldkey.currentState?.openDrawer();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.w, top: 5),
              child: Text(
                'search',
                // style: Styles.textstyle18grey,
                style: TextStyle(fontFamily: 'JosefinSans', fontSize: 18.sp),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w, /*vertical: 5.h*/
              ),
              child: Icon(Icons.search_outlined, size: 27.sp),
            ),
          ],
        ));
  }
}
