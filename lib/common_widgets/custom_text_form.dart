import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';

class CustomCircleTextForm extends StatelessWidget {
  // TextEditingController textEditingController;
  String hintText;
  Icon icon;
  bool? obscure;
  CustomCircleTextForm({
    Key? key,
    //required this.textEditingController,
    required this.hintText,
    required this.icon,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.grey,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              color:
                  AppColors.colorGrey.withOpacity(0.6), // <-- Set opacity here
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
    );
  }
}

class CustomRectangularTextFormField extends StatelessWidget {
  // TextEditingController textEditingController;
  String hintText;
  // Icon icon;
  bool? obscure;
  CustomRectangularTextFormField({
    Key? key,
    //required this.textEditingController,
    required this.hintText,
    // required this.icon,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      // controller: someTextXontroller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
          height: 1.5,
          // set align to top-left corner
          // alignLabelWithHint: true,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(
            color: AppColors.colorPrimary,
            // width: 2,
            // style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15.r),
        fillColor: Colors.white,
      ),
    );
  }
}

class CustomTextFormFieldIcon extends StatelessWidget {
  final String hintText;
  final bool? obscure;

  const CustomTextFormFieldIcon({
    Key? key,
    required this.hintText,
    this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.left,
      obscureText: obscure ?? false,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.normal,
          color: Colors.grey,
          height: 1.5.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(
            color: AppColors.colorPrimary,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.all(15.r),
        fillColor: Colors.white,
        suffixIcon: IconButton(
          onPressed: () {
            // Add your icon button's onPressed action here
          },
          icon: Icon(Icons.add),
        ),
      ),
    );
  }
}
