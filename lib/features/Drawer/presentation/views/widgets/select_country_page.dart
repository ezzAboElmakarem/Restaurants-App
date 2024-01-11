import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';

class SelectCountryPage extends StatefulWidget {
  const SelectCountryPage({super.key});

  @override
  State<SelectCountryPage> createState() => _SelectCountryPageState();
}

class _SelectCountryPageState extends State<SelectCountryPage> {
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
          'Select country',
          style: Styles.textstyle16.copyWith(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
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
          ]),
          Row(children: [
            SizedBox(
              width: 16.w,
            ),
            Image.asset('lib/core/assets/images/germany.png'),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Spain',
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
            Image.asset('lib/core/assets/images/germany.png'),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Egypt',
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
            Image.asset('lib/core/assets/images/germany.png'),
            SizedBox(
              width: 8.w,
            ),
            Text(
              'Moroco',
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
          /*  ListView.builder(
            shrinkWrap: true,
            itemCount: 12,
            itemBuilder: (context, index) => CountryRadioButtonWidget(),
          ),
             */
          // Row(children: [
          //   Image.asset('lib/core/assets/images/germany.png'),
          //   SizedBox(
          //     width: 2.w,
          //   ),
          //   Text(
          //     'Spain',
          //     style: Styles.textstyle14,
          //   ),
          //   Radio(
          //     value: 2,
          //     groupValue: countriesGroupRadioButton,
          //     onChanged: (value) {
          //       setState(() {
          //         countriesGroupRadioButton = value!;
          //       });
          //     },
          //   ),
          // ]),
          // Row(children: [
          //   Image.asset('lib/core/assets/images/germany.png'),
          //   SizedBox(
          //     width: 2.w,
          //   ),
          //   Text(
          //     'Egypt',
          //     style: Styles.textstyle14,
          //   ),
          //   Radio(
          //     value: 3,
          //     groupValue: countriesGroupRadioButton,
          //     onChanged: (value) {
          //       setState(() {
          //         countriesGroupRadioButton = value!;
          //       });
          //     },
          //   ),
          // ]),
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
