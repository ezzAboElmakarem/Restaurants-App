import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/assets/consts.dart';
import '../../../../core/shared_component/component.dart';
import '../../../Drawer/presentation/views/drawer_view.dart';
import '../../../delivery_screen/presentation/views/delivery_screen.dart';
import '../../../filters_bottom_sheet/presentation/views/filter_bottom_sheet.dart';
import '../../../pick_up_screen/presentation/views/pick_up_screen.dart';
import '../../../search/presentation/views/search_page.dart';
import '../manager/cubit/tap_bar_cubit.dart';

class TapBarPage extends StatefulWidget {
  const TapBarPage({super.key});

  @override
  State<TapBarPage> createState() => _TapBarPageState();
}

class _TapBarPageState extends State<TapBarPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  //*************************************************************************** */

  // GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  // final List<String> locationsItem = [
  //   'Muchen, Germany',
  //   'Cairo, Egypt',
  //   'Gaza, Palestine',
  //   'Madrid, Spain',
  //   'Madrid, Spassin',
  //   'Madrid, ',
  //   'Madri',
  //   'Ma',
  // ];
  // String? selectedValue;
  // int currentIndex = 0;

  // List<Widget> screens = [
  //   const TapBarPage(),
  //   const FiltersBottomSheet(),
  //   const SearchPage(),
  //   const DeliveryScreen(),
  // ];
  //*************************************************************************** */
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TapBarCubit(),
      child: BlocConsumer<TapBarCubit, TapBarStates>(
        listener: (context, state) {},
        builder: (context, state) {
          TapBarCubit cubit = TapBarCubit.get(context);
          return Scaffold(
            //*************************************************************************** */
            key: cubit.scaffoldkey,
            drawer: const DrawerWidget(),
            appBar: AppBar(
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: const Icon(
                      color: Colors.white,
                      Icons.menu,
                    )),
              ),
              backgroundColor: kPrimaryColor,
              centerTitle: true,
              title: cubit.DropDownMethod(
                  cubit.locationsItem, cubit.selectedValue),
            ),

            //   //*************************************************************************** */

            body: SizedBox(
              // height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  // SizedBox(height: 50),

                  Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        color: const Color(0xC9FFEAE4),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: TabBar(
                            isScrollable: false,
                            unselectedLabelColor: Colors.black,
                            labelColor: kPrimaryColor,
                            indicatorColor: kPrimaryColor,
                            indicatorWeight: 2,
                            /* indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),*/
                            controller: tabController,
                            tabs: const [
                              Tab(
                                child: Text(
                                  'Delievery',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Pick Ups',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'JosefinSans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Stack(
                      // alignment: AlignmentDirectional.bottomCenter,
                      children: [
                        TabBarView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: tabController,
                          children: const [
                            DeliveryScreen(),
                            PickUpScreen(),
                          ],
                        ),
                        Positioned(
                          top: 475.h,
                          // bottom: ,
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 80.h,
                            decoration: const ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 1, color: Color(0x4C79797B)),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  topRight: Radius.circular(8),
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        isScrollControlled: true,
                                        useRootNavigator: true,
                                        context: context,
                                        builder: (context) => Padding(
                                          padding: EdgeInsets.all(18.0.h),
                                          child: SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .87,
                                              child: const FiltersBottomSheet()
                                              /*Center(
                                          child: Text(
                                        ' Filters Page ',
                                        style: Styles.textstyle40,
                                      )),*/
                                              ),
                                        ),
                                      );

                                      // navigate_to(
                                      //     context: context,
                                      //     widget: const FiltersPage());
                                    },
                                    child: Icon(
                                      Icons.format_align_left_outlined,
                                      color: Colors.black,
                                      size: 35.sp,
                                    )
                                    //Container(
                                    //   height: 36.h,
                                    //   width: 36.w,
                                    //   child: Image.asset(
                                    //       fit: BoxFit.fill,
                                    //       'lib/core/assets/images/filter.png'),
                                    // ),
                                    ),
                                InkWell(
                                    onTap: () {
                                      navigate_to(
                                          context: context,
                                          widget: const SearchPage());
                                    },
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.black,
                                      size: 35.sp,
                                    )
                                    /*Image.asset(
                                'lib/core/assets/images/Location2.png'),*/
                                    ),
                                InkWell(
                                    onTap: () {
                                      navigate_to(
                                          context: context,
                                          widget: const SearchPage());
                                    },
                                    child: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                      size: 35.sp,
                                    )
                                    /*Image.asset(
                                'lib/core/assets/images/search.png'),*/
                                    ),
                              ],
                            ),
                          ),
                        ),
                      ],
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

  //*************************************************************************** */

  // ignore: non_constant_identifier_names
  //********************************

  //******************************************* */
}
