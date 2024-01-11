import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/shared_component/component.dart';
import '../../../../resturant_page/presentation/manager/views/resturant_page.dart';
import '../../../../../core/styles.dart';

class PickUpResturantCard extends StatelessWidget {
  const PickUpResturantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        navigate_to(context: context, widget: ResturantPage());
      },
      child: SizedBox(
        width: 340.w,
        height: 330.h,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                clipBehavior: Clip.antiAlias,
                width: 340.w,
                height: 271.h,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0x7F79797B)),
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
                child: Image.asset(
                  'lib/core/assets/images/pizza_background_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 172.h,
              child: Container(
                width: 340,
                height: 124,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: Color(0x7F79797B)),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(6),
                      bottomRight: Radius.circular(6),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 340,
                height: 147,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                ),
                child: Image.asset(
                  'lib/core/assets/images/pizza_background_image.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 135.w,
              top: 106.h,
              child: Container(
                width: 90.w,
                height: 90.h,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    width: 55.w,
                    'lib/core/assets/images/logo3.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 139.w,
              top: 225.h,
              child: Text(
                'Vincenzio',
                textAlign: TextAlign.right,
                style: Styles.textstyle18,
              ),
            ),
            Positioned(
              left: 13.w,
              top: 260.h,
              child: Text(
                'Egyptian, Pizzas',
                textAlign: TextAlign.right,
                style: Styles.textstyle14.copyWith(color: Colors.grey),
              ),
            ),
            Positioned(
              left: 15.w,
              top: 225.h,
              child: SizedBox(
                width: 300.w,
                height: 30.h,
                child: Row(
                  children: [
                    Text(
                      '4.8',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 13.sp, fontFamily: 'SairaSemiCondensed'),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Image.asset('lib/core/assets/images/star.png'),
                    SizedBox(
                      width: 2.w,
                    ),
                    Text(
                      '(326)',
                      textAlign: TextAlign.right,
                      style: Styles.textstyle14.copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Container(
                        height: 20.h,
                        width: 48.w,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF13A313),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Center(
                          child: Text(
                            'New',
                            style: Styles.textstyle12
                                .copyWith(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            /*   Positioned(
              left: 15,
              top: 159,
              child: Container(
      width: 34.97,
      height: 19,
      child: Stack(
          children: [
              Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                      width: 17.42,
                      child: Text(
                          '4.8',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontFamily: 'Saira SemiCondensed',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: -0.06,
                          ),
                      ),
                  ),
              ),
          ],
      ),
      ) ),
            Positioned(
              left: 55,
              top: 159,
              child: Text(
                '(326)',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 12,
                  fontFamily: 'Saira SemiCondensed',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.06,
                ),
              ),
            ),
           */
            Positioned(
              top: 290.h,
              left: 13.w,
              child: SizedBox(
                height: 26.h,
                width: 300,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'lib/core/assets/images/arrow_location.png',
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      '2.6 Km',
                      style: Styles.textstyle12.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(width: 11.w),
                    Image.asset(
                      'lib/core/assets/images/mini_location.png',
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'Cairo, Egypt',
                      style: Styles.textstyle12.copyWith(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    SizedBox(width: 11.w),
                    Image.asset(
                      'lib/core/assets/images/offer_logo.png',
                      fit: BoxFit.fitHeight,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      'Offer',
                      style: Styles.textstyle12.copyWith(
                        color: const Color(0xFF081740),
                      ),
                    ),
                  ],
                ),

                /* Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 71,
                      height: 25,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 11,
                            left: 8,
                            child: Container(
                              width: 16.w,
                              height: 16.h,
                              child: Image.asset(
                                'lib/core/assets/images/time.png',
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 25,
                            top: 6,
                            child: Text(
                              '30 Mins',
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                                fontSize: 12,
                                fontFamily: 'Josefin Sans',
                                fontWeight: FontWeight.w400,
                                height: 0.11,
                                letterSpacing: 0.50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                      child: Container(
                        width: 50,
                        height: 20,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 27,
                              top: 6,
                              child: Text(
                                'Free',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 12,
                                  fontFamily: 'Josefin Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 0.11,
                                  letterSpacing: 0.50,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 6,
                              bottom: 4,
                              child: Container(
                                width: 20.sp,
                                height: 20.sp,
                                child: Image.asset(
                                  'lib/core/assets/images/fast_delivery.png',
                                  fit: BoxFit.fitHeight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
             */
              ),
            ),
            /*
            Positioned(
              left: 162,
              top: 244,
              child: 
              /*Container(
                width: 65,
                height: 16,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage("https://via.placeholder.com/16x16"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 24,
                      top: 0,
                      child: Text(
                        '1.6 Km',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Microsoft Sans Serif',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            */
            ),
            Positioned(
              left: 285,
              top: 15,
              child: Container(color: Colors.red),
              /* Container(
                width: 24,
                height: 24,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                  ),
                ),
              ),
            */
            ),
            Positioned(
              left: 95,
              top: 244,
              child: Text('data3'),
              /*Container(
                width: 50,
                height: 16,
                child: Stack(
                  children: [
                    Positioned(
                      left: 24,
                      top: 0,
                      child: Text(
                        'Free',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.5),
                          fontSize: 12,
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: 0.11,
                          letterSpacing: 0.50,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                NetworkImage("https://via.placeholder.com/16x16"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            */
            ),
          */
          ],
        ),
      ),
    );
  }
}
