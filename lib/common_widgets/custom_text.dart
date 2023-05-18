import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';

class GothamTextH1 extends StatelessWidget {
  String text;
  GothamTextH1({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.colorBlack,
        fontWeight: FontWeight.w400,
        fontSize: 20.0.sp,
      ),
    );
  }
}
