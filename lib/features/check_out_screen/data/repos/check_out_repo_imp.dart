import 'package:dartz/dartz.dart';
import 'package:resturant_project/core/errors/failure.dart';
import 'package:resturant_project/core/utils/stripe_services.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
import 'package:resturant_project/features/check_out_screen/data/repos/check_out_repo.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeServices stripeServices = StripeServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripeServices.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMessage: e.toString()));
    }
  }
}
