import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';

class customDropDownButton extends StatefulWidget {
  String school;
  List<String> dropdownOptions;
  customDropDownButton({
    Key? key,
    required this.school,
    required this.dropdownOptions,
  }) : super(key: key);

  @override
  State<customDropDownButton> createState() => _customDropDownButtonState();
}

class _customDropDownButtonState extends State<customDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 52.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.colorPrimary,
          //width: 3.0,
        ),
        borderRadius: BorderRadius.circular(5.0.r),
      ),
      child: DropdownButtonFormField<String>(
        alignment: AlignmentDirectional.topEnd,
        value: widget.school,
        borderRadius: BorderRadius.all(Radius.circular(5.0.r)),
        dropdownColor: const Color.fromRGBO(243, 243, 243, 1),
        icon: const Icon(Icons.keyboard_arrow_down_sharp),
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 17.0.h),
          fillColor: AppColors.backgroundColor,
          // border: OutlineInputBorder(
          //   borderSide: BorderSide(color: AppColors.colorPrimary),
          //   // focusColor:AppColors.colorPrimary,
          //   borderRadius: BorderRadius.all(
          //     Radius.circular(6.0.r),
          //   ),
          // ),
          // disabledBorder: InputBorder.none,
          //enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
        style: const TextStyle(
          //  fontFamily: appFontFamily,
          color: AppColors.colorGrey,
        ),
        focusColor: const Color.fromRGBO(243, 243, 243, 1),
        isExpanded: true,
        onChanged: (String? value) {
          setState(() {
            widget.school = value!;
          });
        },
        items: widget.dropdownOptions.map<DropdownMenuItem<String>>((e) {
          return DropdownMenuItem<String>(
            value: e,
            child: Text(
              e,
            ),
          );
        }).toList(),
      ),
    );
  }
}

// const List dropDownOptions = [
//   'Select Sports',
//   'Game1',
//   'Game2',
// ];
// const List SportsOptions = [
//   'Select Sports',
//   'Game1',
//   'Game2',
//   'Game2',
//   'Game2',
//   'Game2',
// ];
