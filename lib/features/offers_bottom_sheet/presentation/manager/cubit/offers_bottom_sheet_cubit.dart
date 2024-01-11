import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'offers_bottom_sheet_state.dart';

class OffersBottomSheetCubit extends Cubit<OffersBottomSheetStates> {
  OffersBottomSheetCubit() : super(OffersBottomSheetInitial());

  static OffersBottomSheetCubit get(context) => BlocProvider.of(context);

  late TabController tabController;

  void openThirdTab() {
    emit(ChangeTapBarScreenState()); // Change the tab index to 2 (third tab)
  }
}

// class OffersBottomSheetCubit extends Cubit<int> {
//   OffersBottomSheetCubit() : super(0);
//   static OffersBottomSheetCubit get(context) => BlocProvider.of(context);
//   void openThirdTab() {
//     emit(2); // Change the tab index to 2 (third tab)
//   }
// }
