import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/styles.dart';
import '../manager/cubit/offers_bottom_sheet_cubit.dart';
import 'widgets/info_maps_tapbar.dart';
import 'widgets/offers_tapbar.dart';
import 'widgets/reviews_tapbar_screen.dart';

// ignore: must_be_immutable
class OffersBottomSheet extends StatefulWidget {
  OffersBottomSheet({super.key, required this.initialIndex});
  int initialIndex;
  @override
  State<OffersBottomSheet> createState() =>
      _OffersBottomSheetState(initialIndex: initialIndex);
}

class _OffersBottomSheetState extends State<OffersBottomSheet>
    with SingleTickerProviderStateMixin {
  final int initialIndex;
  late TabController tabController;

  _OffersBottomSheetState({required this.initialIndex});

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: 3, vsync: this, initialIndex: initialIndex);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OffersBottomSheetCubit(),
      child: BlocConsumer<OffersBottomSheetCubit, OffersBottomSheetStates>(
        listener: (context, state) {},
        builder: (context, currentIndex) {
          //OffersBottomSheetCubit cubit = OffersBottomSheetCubit.get(context);

          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      children: [
                        SizedBox(
                          width: 32.w,
                        ),
                        Image.asset('lib/core/assets/images/down-arrow.png'),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text('Vincenzio', style: Styles.textstyle16),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DefaultTabController(
                    length: 3,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.85,
                      child: Column(
                        children: [
                          TabBar(
                            controller: tabController,
                            isScrollable: false,
                            unselectedLabelColor: Colors.black,
                            labelColor: kPrimaryColor,
                            indicatorColor: kPrimaryColor,
                            tabs: const [
                              Tab(
                                text: 'Info/Map',
                              ),
                              Tab(
                                text: 'Reviews',
                              ),
                              Tab(
                                text: 'Offers',
                              ),
                            ],
                          ),
                          Expanded(
                            child: TabBarView(
                              //physics: const NeverScrollableScrollPhysics(),
                              controller: tabController,
                              children: const [
                                InfoMapsTapBarScreen(),
                                ReviewsTapBarScreen(),
                                OffersTapBarScreen(),
                              ],
                              // controller: TabController(
                              //     length: 3, initialIndex: 2, vsync: this),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
