import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';

class SubmitButton2 extends StatelessWidget {
  String text;
  Icon icon;
  VoidCallback function;
  SubmitButton2({
    Key? key,
    required this.text,
    required this.icon,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      icon: icon,
      label: Text(
        text,
        style: TextStyle(
          fontSize: 16.0.sp,
          color: AppColors.colorPrimary,
        ),
      ),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.colorPrimary,
        backgroundColor: Colors.white,
        side: const BorderSide(
          color: AppColors.colorPrimary,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6.0.r)),
        ),
        // backgroundColor: AppColors.colorComplimentary,
        fixedSize: Size(350.0.w, 56.0.h),
      ),
      onPressed: function,
    );
  }
}

class SubmitButton extends StatelessWidget {
  String text;
  VoidCallback function;
  Color? color;
  Icon icon;
  // bool? svgPic;
  //bool suffixIcon;
  SubmitButton({
    Key? key,
    required this.text,
    required this.function,
    this.color,
    required this.icon,
    //  this.svgPic,
    // this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.colorPrimary,
          //width: 3.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          ),
          backgroundColor: color ?? AppColors.backgroundColor,
          fixedSize: Size(350.0.w, 56.0.h),
          textStyle: TextStyle(
            fontSize: 16.0.sp,
            color: AppColors.colorBlack,
          ),
        ),
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 8.0.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w500,
                color: color != null ? Colors.white : AppColors.colorBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/////////////////
class SubmitButtonColor extends StatelessWidget {
  String text;
  VoidCallback function;
  Icon icon;
  Color? color;

  SubmitButtonColor({
    Key? key,
    required this.text,
    required this.function,
    required this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.colorPrimary,
          //width: 3.0,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
          ),
          backgroundColor:
              color ?? AppColors.colorPrimary, // update the color property
          fixedSize: Size(350.0.w, 56.0.h),
          textStyle: TextStyle(
            fontSize: 16.0.sp,
            color: AppColors.colorBlack,
          ),
        ),
        onPressed: function,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(width: 8.0.w),
            Text(
              text,
              style: TextStyle(
                fontSize: 18.0.sp,
                fontWeight: FontWeight.w500,
                color: color != null ? Colors.white : AppColors.colorBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
