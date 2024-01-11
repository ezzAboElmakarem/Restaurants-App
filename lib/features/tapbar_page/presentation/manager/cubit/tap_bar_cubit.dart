import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import '../../../../delivery_screen/presentation/views/delivery_screen.dart';
import '../../../../filters_bottom_sheet/presentation/views/filter_bottom_sheet.dart';
import '../../../../search/presentation/views/search_page.dart';
import '../../views/tapbar_page.dart';

part 'tap_bar_state.dart';

class TapBarCubit extends Cubit<TapBarStates> {
  TapBarCubit() : super(TapBarInitial());
  static TapBarCubit get(context) => BlocProvider.of(context);

  int selectedIndex = 0;
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
  int currentIndex = 0;

  List<Widget> screens = [
    const TapBarPage(),
    const FiltersBottomSheet(),
    const SearchPage(),
    const DeliveryScreen(),
  ];

  DropdownButtonHideUnderline DropDownMethod(
      List<String> data, String? selectedValue) {
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
        items: data
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item,
                      style: Styles.textstyle16.copyWith(color: Colors.white)),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          selectedValue = value;

          emit(ChooseLocationState());
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
