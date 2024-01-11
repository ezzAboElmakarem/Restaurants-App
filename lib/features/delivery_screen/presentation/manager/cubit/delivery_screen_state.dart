part of 'delivery_screen_cubit.dart';

@immutable
sealed class DeliveryScreenStates {}

final class DeliveryScreenInitial extends DeliveryScreenStates {}

class SelectGategoryState extends DeliveryScreenStates {}
