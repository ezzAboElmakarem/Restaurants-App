import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/shared_component/component.dart';
import '../../../../../core/styles.dart';
import 'explore_favourite_screen.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_backspace_outlined,
              color: Colors.white),
        ),
        title: Row(
          children: [
            Text(
              'Favourites',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset('lib/core/assets/images/bigger_heart.png'),
            SizedBox(
              height: 24.h,
            ),
            Text('No favourite places', style: Styles.textstyle20),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'You currently don’t have any favourite places',
              style: Styles.textstyle16.copyWith(color: ColorStyles.greyColor),
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              width: 340.w,
              height: 70.h,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: ColorStyles.lightGreyColor),
                ),
              ),
              child: InkWell(
                onTap: () {
                  navigate_to(
                      context: context, widget: const ExploreFavouriteScreen());
                },
                child: Center(
                  child: Text(
                    'Explore places to order from',
                    style: Styles.textstyle16
                        .copyWith(color: ColorStyles.blueColor),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
