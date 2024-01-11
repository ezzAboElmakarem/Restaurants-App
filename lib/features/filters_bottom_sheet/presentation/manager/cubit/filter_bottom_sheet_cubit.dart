import 'package:bloc/bloc.dart';
import 'package:checkbox_grouped/checkbox_grouped.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
part 'filter_bottom_sheet_state.dart';

class FilterBottomSheetCubit extends Cubit<FilterBottomSheetStates> {
  FilterBottomSheetCubit() : super(FilterBottomSheetInitial());
  static FilterBottomSheetCubit get(context) => BlocProvider.of(context);
  final List<String> locationsItem = [
    'reviews ',
    'distance  ',
    'delivery costs  ',
    'product price ',
    'alphabetical ',
  ];
  bool isSwitched = false;
  bool ischecked_1 = false;
  bool ischecked_2 = false;
  String? selectedValue;
  int orderAmount_Group_RadioButton = 0;

  GroupController controller = GroupController();

  selectOrderAmount() {
    emit(SelectAmountState());
  }

  DropdownButtonHideUnderline dropDownMethod() {
    return DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        dropdownStyleData: DropdownStyleData(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
        ),
        iconStyleData: IconStyleData(
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
          ),
          iconSize: 35,
          iconEnabledColor: ColorStyles.secondColor,
        ),
        isExpanded: true,
        hint: Text('best match',
            style: Styles.textstyle16.copyWith(color: ColorStyles.secondColor)),
        items: locationsItem
            .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item,
                      style: Styles.textstyle16
                          .copyWith(color: ColorStyles.secondColor)),
                ))
            .toList(),
        value: selectedValue,
        onChanged: (String? value) {
          selectedValue = value;
          emit(SelectSortByState());
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
