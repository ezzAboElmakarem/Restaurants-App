import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resturant_project/core/assets/consts.dart';
import 'package:resturant_project/core/shared_component/component.dart';
import 'package:resturant_project/features/check_out_screen/data/models/payment_intent_input_model.dart';
import 'package:resturant_project/features/check_out_screen/presentation/manager/cubit/payment_cubit.dart';
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
        return CustomButon(
          text: 'Pay with CreditCards',
          isLoading: isLoading,
          buttonColor: Colors.white,
          textColor: ColorStyles.textColor,
          onTap: () {
            PaymentIntentInputModel paymentIntentInputModel =
                PaymentIntentInputModel(amount: '1000', currency: 'USD');
            cubit.makePayment(paymentIntentInputModel: paymentIntentInputModel);
          },
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
}
