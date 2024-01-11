part of 'pick_up_screen_cubit.dart';

sealed class PickUpScreenStates extends Equatable {
  const PickUpScreenStates();

  @override
  List<Object> get props => [];
}

final class PickUpScreenInitial extends PickUpScreenStates {}

class SelectGategoryState extends PickUpScreenStates {}
