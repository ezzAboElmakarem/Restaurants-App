part of 'filter_bottom_sheet_cubit.dart';

@immutable
sealed class FilterBottomSheetStates {}

final class FilterBottomSheetInitial extends FilterBottomSheetStates {}

class SelectAmountState extends FilterBottomSheetStates {}

class SelectSortByState extends FilterBottomSheetStates {}
