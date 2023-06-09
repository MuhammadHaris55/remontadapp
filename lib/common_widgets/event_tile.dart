import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';
import '../features/home/screens/home_screen.dart';

class EventTile extends StatelessWidget {
  final String imagePath;
  final bool group;
  EventTile({
    Key? key,
    required this.imagePath,
    this.group = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 89.h,
      width: 359.w,
      color: AppColors.backgroundColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 95.0.w,
            height: 90.0.h,
            child: Image.asset(
              imagePath, // replace with your own image path
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Tomorrow, 16 March',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.access_time,
                    size: 20.sp,
                  ),
                  SizedBox(width: 5.0.w),
                  Text(
                    "06:00AM : 9:00AM",
                    style: TextStyle(
                        color: AppColors.colorGrey,
                        fontSize: 10.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.location_on_sharp,
                    size: 20.sp,
                  ),
                  SizedBox(width: 5.0.w),
                  Text(
                    "Jeddah",
                    style: TextStyle(
                        color: AppColors.colorGrey,
                        fontSize: 10.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              group
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.groups_outlined,
                          size: 20.sp,
                        ),
                        SizedBox(width: 5.0.w),
                        Text(
                          "6 out of 9",
                          style: TextStyle(
                              color: AppColors.colorGrey,
                              fontSize: 10.0.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '80 SAR',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(height: 2.0.h),
              SizedBox(
                width: 65.0.w,
                height: 20.0.h,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(color: Colors.white),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      primary: AppColors.colorPrimary),
                  child: Text(
                    'Join',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0.sp,
                      color: AppColors.backgroundColor,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
