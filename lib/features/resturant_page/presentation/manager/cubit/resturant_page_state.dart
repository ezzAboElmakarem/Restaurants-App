part of 'resturant_page_cubit.dart';

@immutable
sealed class ResturantPageStates {}

final class ResturantPageInitial extends ResturantPageStates {}

class FilterPressedState extends ResturantPageStates {}

class ChangeFavouriteState extends ResturantPageStates {}

class SizeRadioButtonState extends ResturantPageStates {}

class ButtonNameState extends ResturantPageStates {}

class SaveNumOfOrderState extends ResturantPageStates {}
