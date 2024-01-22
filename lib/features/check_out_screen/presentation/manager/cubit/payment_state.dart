part of 'payment_cubit.dart';

sealed class PaymentStates extends Equatable {
  const PaymentStates();

  @override
  List<Object> get props => [];
}

final class PaymentInitial extends PaymentStates {}

final class PaymentLoadingState extends PaymentStates {}

final class PaymentSuccessState extends PaymentStates {}

final class PaymentFailedState extends PaymentStates {
  final String errorMsg;

  const PaymentFailedState({required this.errorMsg});
}
