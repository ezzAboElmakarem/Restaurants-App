import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/assets/consts.dart';
import '../../core/styles.dart';
import '../Drawer/presentation/views/drawer_view.dart';
import '../delivery_screen/presentation/views/delivery_screen.dart';
import '../search/presentation/views/search_page.dart';
import '../tapbar_page/presentation/views/tapbar_page.dart';

class HomeScreenAndNavBar extends StatefulWidget {
  const HomeScreenAndNavBar({super.key});

  @override
  State<HomeScreenAndNavBar> createState() => _HomeScreenAndNavBarState();
}

class _HomeScreenAndNavBarState
    extends State<HomeScreenAndNavBar> /*with SingleTickerProviderStateMixin*/ {
  /* late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }*/

  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

  final List<String> locationsItem = [
    'Muchen, Germany',
    'Cairo, Egypt',
    'Gaza, Palestine',
    'Madrid, Spain',
    'Madrid, Spassin',
    'Madrid, ',
    'Madri',
    'Ma',
  ];
  String? selectedValue;
  bool tabBarSelectedItem = false;
  int currentIndex = 0;

  List<Widget> screens = [
    const TapBarPage(),
    const SearchPage(),
    const SearchPage(),
    const DeliveryScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
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
        title: LocationDropDownMethod(),
        /*    bottom: TabBar(
            indicatorColor: Colors.green,
            unselectedLabelColor: Colors.blue,
            labelColor: Colors.white,
            tabs: [
              InkWell(
                onTap: () {
                  setState(() {
                    tabBarSelectedItem = !tabBarSelectedItem;
                  });
                },
                child: Tab(
                  child: Text(
                    'Delievery',
                    style: Styles.textstyle16.copyWith(
                        color:
                            tabBarSelectedItem ? Colors.white : Colors.black),
                  ),
                ),
              ),
              Tab(
                child: Text(
                  'Pick Ups',
                  style: Styles.textstyle16,
                ),
              ),
            ]),
     */
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        backgroundColor: Colors.white,
        //ColorStyles.bottomColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        iconSize: 32.h,
        selectedLabelStyle:
            Styles.textstyle16.copyWith(fontWeight: FontWeight.bold),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('lib/core/assets/images/filter.png'),
            label: 'Filter',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/core/assets/images/Location2.png'),
            label: 'Location',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('lib/core/assets/images/search.png'),
            label: 'Search',
          ),
        ],
      ),

      /* SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
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
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children: const [
                    DeliveryScreen(),
                    DeliveryScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    */
    );
  }

  DropdownButtonHideUnderline LocationDropDownMethod() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: kPrimaryColor,
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_drop_down_outlined,
          ),
          iconSize: 35,
          iconEnabledColor: Colors.white,
        ),
        isExpanded: true,
        hint: Text('Select Location',
            style: Styles.textstyle16.copyWith(color: Colors.white)),
        items: locationsItem
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item,
                      style: Styles.textstyle16.copyWith(color: Colors.white)),
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
          width: 240.w,
        ),
        menuItemStyleData: MenuItemStyleData(
          height: 40.h,
        ),
      ),
    );
  }
}
