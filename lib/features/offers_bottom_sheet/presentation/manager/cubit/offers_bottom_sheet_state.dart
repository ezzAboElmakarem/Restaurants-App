part of 'offers_bottom_sheet_cubit.dart';

sealed class OffersBottomSheetStates extends Equatable {
  const OffersBottomSheetStates();

  @override
  List<Object> get props => [];
}

final class OffersBottomSheetInitial extends OffersBottomSheetStates {}

final class ChangeTapBarScreenState extends OffersBottomSheetStates {}
