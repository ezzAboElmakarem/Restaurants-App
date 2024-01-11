import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class SelectLangauagePage extends StatefulWidget {
  const SelectLangauagePage({super.key});

  @override
  State<SelectLangauagePage> createState() => _SelectLangauagePageState();
}

class _SelectLangauagePageState extends State<SelectLangauagePage> {
  int countriesGroupRadioButton = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Select language',
          style: Styles.textstyle16.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            SizedBox(
              width: 16.w,
            ),
            Text(
              'Germany',
              style: Styles.textstyle14,
            ),
            const Spacer(),
            Radio(
              value: 1,
              groupValue: countriesGroupRadioButton,
              onChanged: (value) {
                setState(() {
                  countriesGroupRadioButton = value!;
                });
              },
            ),
            SizedBox(
              width: 16.w,
            ),
          ]),
          Row(children: [
            SizedBox(
              width: 16.w,
            ),
            Text(
              'Arabic',
              style: Styles.textstyle14,
            ),
            const Spacer(),
            Radio(
              value: 2,
              groupValue: countriesGroupRadioButton,
              onChanged: (value) {
                setState(() {
                  countriesGroupRadioButton = value!;
                });
              },
            ),
            SizedBox(
              width: 16.w,
            ),
          ]),
          Row(children: [
            SizedBox(
              width: 16.w,
            ),
            Text(
              'Italy',
              style: Styles.textstyle14,
            ),
            const Spacer(),
            Radio(
              value: 3,
              groupValue: countriesGroupRadioButton,
              onChanged: (value) {
                setState(() {
                  countriesGroupRadioButton = value!;
                });
              },
            ),
            SizedBox(
              width: 16.w,
            ),
          ]),
          Row(children: [
            SizedBox(
              width: 16.w,
            ),
            Text(
              'Frensh',
              style: Styles.textstyle14,
            ),
            const Spacer(),
            Radio(
              value: 4,
              groupValue: countriesGroupRadioButton,
              onChanged: (value) {
                setState(() {
                  countriesGroupRadioButton = value!;
                });
              },
            ),
            SizedBox(
              width: 16.w,
            ),
          ]),
        ]),
      ),
    );
  }

  Row CountryRadioButtonWidget() {
    return Row(children: [
      SizedBox(
        width: 16.w,
      ),
      Image.asset('lib/core/assets/images/germany.png'),
      SizedBox(
        width: 8.w,
      ),
      Text(
        'Germany',
        style: Styles.textstyle14,
      ),
      const Spacer(),
      Radio(
        value: 1,
        groupValue: countriesGroupRadioButton,
        onChanged: (value) {
          setState(() {
            countriesGroupRadioButton = value!;
          });
        },
      ),
      SizedBox(
        width: 16.w,
      ),
    ]);
  }
}
