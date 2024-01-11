import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/assets/consts.dart';
import '../../../../../core/styles.dart';
import '../../../../check_out_screen/presentation/views/widgets/text_form_field_widget.dart';

class PersonalDataScreen extends StatefulWidget {
  const PersonalDataScreen({super.key});

  @override
  State<PersonalDataScreen> createState() => _PersonalDataScreenState();
}

class _PersonalDataScreenState extends State<PersonalDataScreen> {
  String? selectedValue;

  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_backspace_outlined,
              color: Colors.white),
        ),
        title: Row(
          children: [
            Text(
              'Personal data',
              style: Styles.textstyle16
                  .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Text(
                'Order information',
                style: Styles.textstyle18,
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 360.w,
                child: Text(
                  'when placing an order you will receive a confirmation, food tracker status messages and a request to review the restaurant via email ior otherwise (such as push messages)',
                  style: Styles.textstyle16.copyWith(
                      color: ColorStyles.greyColor,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Container(
                    width: 210.w,
                    child: Text(
                      'Messages about news and discounts',
                      style: Styles.textstyle18,
                    ),
                  ),
                  Spacer(),
                  Transform.scale(
                    scale: .6,
                    child: Switch(
                      //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      autofocus: false,
                      activeTrackColor: kPrimaryColor,
                      activeColor: Colors.white,
                      inactiveThumbColor: ColorStyles.textColor,
                      inactiveTrackColor: Colors.white,
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          selectedValue;
                        });
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'receive discounts, loyalty offers and other updates',
                style: Styles.textstyle16.copyWith(
                    color: ColorStyles.greyColor, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 24.h,
              ),
              TextFormFieldmethod(
                type: TextInputType.emailAddress,
                title: 'E-mail',
              ),
              SizedBox(
                height: 40.h,
              ),
              Center(
                child: Container(
                  width: 330.w,
                  height: 50.h,
                  color: ColorStyles.blueColor,
                  child: Center(
                    child: Text(
                      'Save',
                      style: Styles.textstyle16.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
