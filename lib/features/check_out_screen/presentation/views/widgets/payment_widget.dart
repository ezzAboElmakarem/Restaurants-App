import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:resturant_project/core/assets/consts.dart';
import 'package:resturant_project/core/functions/get_transctions.dart';
import 'package:resturant_project/core/shared_component/component.dart';
import 'package:resturant_project/core/utils/api_secret_keys.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
import 'package:resturant_project/features/check_out_screen/data/models/paypal_models/amount_model/amount_model.dart';
import 'package:resturant_project/features/check_out_screen/data/models/paypal_models/item_list_model/item_list_model.dart';
import 'package:resturant_project/features/check_out_screen/presentation/manager/cubit/payment_cubit.dart';
import 'package:resturant_project/features/check_out_screen/presentation/views/widgets/details_types_widget.dart';
import 'package:resturant_project/features/tapbar_page/presentation/views/tapbar_page.dart';

// ignore: must_be_immutable
class PayementWidget extends StatelessWidget {
  PayementWidget({super.key, required this.isLoading});
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentStates>(
      listener: (context, state) {
        if (state is PaymentLoadingState) {
          isLoading = true;
        }
        if (state is PaymentSuccessState) {
          isLoading = false;
          navigateandfinish(context: context, widget: TapBarPage());
        }

        if (state is PaymentFailedState) {
          isLoading = false;
          SnackBar snackBar = SnackBar(content: Text(state.errorMsg));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          print(state.errorMsg);
        }
      },
      builder: (context, state) {
        PaymentCubit cubit = PaymentCubit.get(context);
        return Column(
          children: [
            DetailsTypesWidget(
              imageUrl: 'lib/core/assets/images/paypal.png',
              title: 'Pay With',
              subTitle1: ' PayPal',
              successImage: true,
              function: () {
                var transctionsData = getTransctionsData();
                exceutePaypalPayment(context, transctionsData);
              },
            ),
            SizedBox(
              height: 12.h,
            ),
            CustomButon(
              text: 'Pay with CreditCards',
              isLoading: isLoading,
              buttonColor: Colors.white,
              textColor: ColorStyles.textColor,
              onTap: () {
                PaymentIntentInputModel paymentIntentInputModel =
                    PaymentIntentInputModel('cus_PTDVLil8v3W1s1',
                        amount: '1000', currency: 'USD');
                cubit.makePayment(
                    paymentIntentInputModel: paymentIntentInputModel);
              },
            ),
          ],
        );
        // DetailsTypesWidget(
        //   successImage: true,
        //   imageUrl: 'lib/core/assets/images/paypal.png',
        //   title: 'Pay with',
        //   subTitle1: 'PayPal or else',
        //   function: () {
        // PaymentIntentInputModel paymentIntentInputModel =
        //     PaymentIntentInputModel(amount: '1000', currency: 'USD');
        // cubit.makePayment(paymentIntentInputModel: paymentIntentInputModel);
        //   },
        // );
      },
    );
  }

  void exceutePaypalPayment(BuildContext context,
      ({AmountModel amount, ItemListModel itemList}) transctionsData) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.paypalClientID,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": transctionsData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transctionsData.itemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) {
              return const TapBarPage();
            }),
            (route) {
              if (route.settings.name == '/') {
                return true;
              } else {
                return false;
              }
            },
          );
        },
        onError: (error) {
          SnackBar snackBar = SnackBar(content: Text(error.toString()));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) {
              return const TapBarPage();
            }),
            (route) {
              return false;
            },
          );
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }
}
