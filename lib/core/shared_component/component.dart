import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../styles.dart';
import 'package:url_launcher/url_launcher.dart';

Future<dynamic> bottomSheetMethod({
  required BuildContext context,
  required Widget bottomSheetContent,
  double? height,
}) {
  return showModalBottomSheet(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    isScrollControlled: true,
    useRootNavigator: true,
    context: context,
    builder: (context) => Padding(
      padding: EdgeInsets.all(18.0.h),
      child: SizedBox(
        height: height ?? MediaQuery.of(context).size.height * .85,
        child: bottomSheetContent,
      ),
    ),
  );
}

Widget customDivider() {
  return Container(
    width: 144.w,
    decoration: const ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0x7F79797B),
        ),
      ),
    ),
  );
}

class CategorySlider extends StatefulWidget {
  final List<String> categories;
  final Function(int) onCategorySelected;

  CategorySlider({required this.categories, required this.onCategorySelected});

  @override
  _CategorySliderState createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
                widget.onCategorySelected(selectedIndex);
              });
            },
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: selectedIndex == index ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  widget.categories[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget DefaultButton({
  double height = 35,
  double containerheight = 30,
  double fontsize = 20,
  double width = double.infinity,
  Color color = Colors.blue,
  Color textcolor = Colors.white,
  Color bordercolor = Colors.transparent,
  @required var function,
  double radius = 10,
  @required var text,
  bool uppercase = true,
}) =>
    Container(
      height: containerheight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: bordercolor),
        color: color,
      ),
      width: width,
      child: MaterialButton(
        onPressed: function,
        height: height,
        child: Text(uppercase ? text.toUpperCase() : text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontsize,
                color: textcolor)),
      ),
    );

// ignore: non_constant_identifier_names
Widget DefaultFormField(
        {@required TextEditingController? controller,
        TextInputType texttype = TextInputType.emailAddress,
        var prefixicon,
        var sufixicon,
        @required String? label,
        var validate,
        bool password = false,
        int maxlines = 1,
        // ignore: non_constant_identifier_names
        double? container_height,
        // ignore: non_constant_identifier_names
        double? container_width,
        var suffixbutton}) =>
    TextFormField(
        controller: controller,
        keyboardType: texttype,
        obscureText: password,
        maxLines: maxlines,
        decoration: InputDecoration(
            // hintText: 'Email Address',
            prefixIcon: Icon(prefixicon == null ? null : prefixicon),
            suffixIcon: IconButton(
                onPressed: suffixbutton,
                icon: Icon(sufixicon == null ? null : sufixicon)),
            labelText: label,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        validator: validate);

Widget taskslist({required Map items}) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            child: Text(
              '${items['time']}',
              style: const TextStyle(fontSize: 15),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${items['title']}',
                style:
                    const TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '${items['date']}',
                style: const TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          ),
        ],
      ),
    );

// ignore: non_constant_identifier_names
void navigate_to({@required context, @required widget}) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateandfinish({@required context, @required widget}) {
  Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (contex) => widget),
      (route) => false).then((value) {});
}

Widget formFieldWithContainer({
  Color? containerColor,
  double radius = 20,
  IconData prefxicon = Icons.lock,
  required String? text,
  required TextEditingController? controller,
  var ontap,
  var onsubmit,
}) =>
    Container(
      decoration: BoxDecoration(
          color: containerColor ?? Colors.grey.withOpacity(.2),
          borderRadius: BorderRadius.circular(radius)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: TextFormField(
          onTap: ontap,
          onFieldSubmitted: onsubmit,
          controller: controller,
          textAlign: TextAlign.right,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          decoration: InputDecoration(
              prefixIcon: Icon(prefxicon),
              border: InputBorder.none,
              hintText: text),
        ),
      ),
    );

void showSnackBar(BuildContext context, String message) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 2),
    ));

Future<void> launchurl({required String address}) async {
  final Uri url = Uri.parse(address);
  if (!await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  )) {
    throw Exception('Could not launch $url');
  }
}

void dialogMessage(
    {required BuildContext context,
    required String subject,
    required String firstbutton,
    required String secondbutton,
    void Function()? firstfunction,
    void Function()? secondfunction}) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      contentPadding: EdgeInsets.all(15.h),
      backgroundColor: Colors.white,
      title: Text(subject,
          style: Styles.textstyle14,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl),
      actions: [
        Row(
          children: [
            TextButton(
              onPressed: secondfunction,
              child: Text(
                secondbutton,
                style:
                    Styles.textstyle14.copyWith(color: const Color(0xFFFF0000)),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: firstfunction,
              child: Text(
                firstbutton,
                style: Styles.textstyle14,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

//------------------------------------------------------------------------------

// ignore: non_constant_identifier_names
Widget CustomTextFormFieldWithTitle({
  @required TextEditingController? controller,
  required TextInputType? type,
  @required String? hint,
  required String? title,
  Color? titleColor = Colors.black,
  required textDirection,
  Widget? prefixIcon,
  String? prefixText,
  Widget? suffixIcon,
  @required Function(String)? onChange,
  Color? errorColor,
  bool ispassword = false,
  bool isEnabled = true,
  required String? Function(String?)? validation,
}) {
  return Column(
    children: [
      Row(
        textDirection: TextDirection.rtl,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: Text(title!,
                style: Styles.textstyle20.copyWith(color: titleColor)),
          ),
        ],
      ),
      TextFormField(
        enabled: isEnabled,
        style: TextStyle(
            fontWeight: FontWeight.w600, color: Colors.black, fontSize: 21.sp),
        textDirection: textDirection,
        obscureText: ispassword,
        onChanged: onChange,
        controller: controller,
        validator: validation,
        keyboardType: type,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 10.w, vertical: 17.h),
          //  contentPadding: EdgeInsets.fromLTRB(10, 20, 10, 20),
          errorStyle: TextStyle(
              color: errorColor, fontSize: 14, fontWeight: FontWeight.bold),
          hintStyle: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
          ),
          hintTextDirection: TextDirection.rtl,
          prefixText: prefixText,
          prefixStyle: TextStyle(
              color: Colors.black,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold),
          filled: true,
          fillColor: Colors.white,
          hintText: hint,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xff1E88EA),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color(0xff1E88EA),
              width: 2.w,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff1E88EA),
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff1E88EA),
              width: 2,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
        ),
      ),
    ],
  );
}

//-----------------------------------------------------------------------

// ignore: must_be_immutable
class CustomButon extends StatelessWidget {
  CustomButon(
      {super.key,
      this.onTap,
      required this.text,
      required this.isLoading,
      required this.buttonColor,
      required this.textColor});
  VoidCallback? onTap;
  String text;
  bool isLoading = false;
  Color buttonColor;
  Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width * 0.4,
        height: 50,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
                  text,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: textColor),
                ),
        ),
      ),
    );
  }
}

//-----------------------------------------------------------------------

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {Key? key, required this.logo, required this.icon, this.onPressed})
      : super(key: key);

  final String logo;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
          Image.asset(
            height: 90.h,
            width: 100.w,
            logo,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  final void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        color: Colors.white,
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 28,
        ),
      ),
    );
  }
}
