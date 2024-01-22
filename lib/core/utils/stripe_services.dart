import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:resturant_project/core/utils/api_secret_keys.dart';
import 'package:resturant_project/core/utils/api_service.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_model/payment_intent_model.dart';

class StripeServices {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    var response = await apiService.post(
        body: paymentIntentInputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretKey);

    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initentPaymentSheet({required String paymentIntentClientSheet}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSheet,
        merchantDisplayName: 'Zlatan',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    await initentPaymentSheet(
        paymentIntentClientSheet: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
}
