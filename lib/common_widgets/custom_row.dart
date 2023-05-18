import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';

class CustomRow extends StatelessWidget {
  String text;
  Icon icon;
  Color color;
  //bool? obscure;
  CustomRow({
    Key? key,
    //required this.textEditingController,
    required this.text,
    required this.icon,
    required this.color,
    //this.obscure,
  }) : super(key: key);
  // const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0.sp,
              color: AppColors.colorBlack,
              fontStyle: FontStyle.normal,
            ),
          ),
          Container(
            height: 2.h,
            width: MediaQuery.of(context).size.width / 2.9.w,
            color: color,
          ),
          //  Icon(Icons.shop),
          icon,
        ],
      ),
    );
  }
}
