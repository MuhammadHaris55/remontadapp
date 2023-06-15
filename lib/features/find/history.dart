import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/menu_side_bar.dart';
import '../../constants/global_variables.dart';

class HistoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Row(
          children: [
            CircleAvatar(
              child: Image.asset(
                'assets/images/profile1.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
            ),
            onPressed: () {},
            // onPressed: () =>
            //     Navigator.pushNamed(context, EditProfile.routeName),
          ),
          IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SideMenuBar()),
              );
            },
            // onPressed: () =>
            //     Navigator.pushNamed(context, EditProfile.routeName),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.0.h),
        child: Column(children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.colorGrey,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text(
                'HISTORY',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26.0.sp,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                height: 100.12.h,
                width: 359.w,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.r),
                    bottomLeft: Radius.circular(10.r),
                  ),
                ),
                child: Card(
                  elevation: 2.sp,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 96.77.w,
                        height: 89.12.h,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.r),
                            bottomLeft: Radius.circular(10.r),
                          ),
                          child: Image.asset(
                            'assets/images/player1.png', // replace with your own image path
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 23.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tomorrow, 16 March',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: AppColors.colorGrey,
                                size: 20.sp,
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text(
                                "06:00AM : 9:00AM",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0.sp,
                                  color: AppColors.colorGrey,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                color: AppColors.colorGrey,
                                size: 20.sp,
                              ),
                              SizedBox(
                                width: 10.h,
                              ),
                              Text(
                                "Jeddah",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 10.0.sp,
                                  color: AppColors.colorGrey,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '80 SAR',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          SizedBox(
                            height: 20.0.h,
                            // width: 57.w,
                            child: ElevatedButton(
                              onPressed: () {
                                // TODO: Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                textStyle: const TextStyle(color: Colors.white),
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0.r),
                                ),
                                primary: AppColors.colorPrimary,
                              ),
                              child: Text(
                                'Complete',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9.0.sp,
                                  color: AppColors.backgroundColor,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
              // SizedBox(
              //   height: 10,
              // );
            },
          )
        ]),
      ),
    );
  }
}
