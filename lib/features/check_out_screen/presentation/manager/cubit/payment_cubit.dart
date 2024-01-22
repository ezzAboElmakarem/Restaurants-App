import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
import 'package:resturant_project/features/check_out_screen/data/repos/check_out_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentStates> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  static PaymentCubit get(context) => BlocProvider.of(context);

  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoadingState());
    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) => emit(PaymentFailedState(errorMsg: l.errMessage)),
      (r) => emit(PaymentSuccessState()),
    );
  }

  @override
  void onChange(Change<PaymentStates> change) {
    log(change.toString());
    super.onChange(change);
  }
}
