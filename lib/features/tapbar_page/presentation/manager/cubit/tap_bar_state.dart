part of 'tap_bar_cubit.dart';

@immutable
sealed class TapBarStates {}

final class TapBarInitial extends TapBarStates {}

class ChooseLocationState extends TapBarStates {}
