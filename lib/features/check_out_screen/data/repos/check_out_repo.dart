import 'package:dartz/dartz.dart';
import 'package:resturant_project/core/errors/failure.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
// import 'package:dartz/dartz.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel});
}
