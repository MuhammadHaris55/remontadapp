import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/profile_appbar.dart';
import '../../constants/global_variables.dart';
import 'widgets/explore_date.dart';

class FindGym extends StatelessWidget {
  const FindGym({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ProfileAppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: AppColors.colorGrey,
                      ),
                      onPressed: () {},
                      // onPressed: () =>
                      //     Navigator.pushNamed(context, EditProfile.routeName),
                    ),
                    Column(
                      children: [
                        Text(
                          "FIND GYM",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "15 Facilities",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0.sp,
                            color: AppColors.colorGrey,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(),
                  ],
                ),
                SizedBox(height: 20.0.h),
                const ExploreDate(),
                SizedBox(height: 40.0.h),
                // Expanded(
                // child:
                ListView.builder(
                  itemCount: 6,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      margin: EdgeInsets.only(bottom: 40.0.h),
                      elevation: 5,
                      color: Colors.white,
                      // borderOnForeground: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0.r),
                      ),
                      shadowColor: const Color.fromRGBO(233, 233, 233, 1),
                      child: Column(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            'assets/images/find_gym.png',
                            fit: BoxFit.cover,
                            height: 255.0.h,
                            width: 396.w,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0.r),
                            color: const Color.fromRGBO(243, 243, 243, 1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.0.w, vertical: 19.0.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'XYZ Gym',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text('Riffa'),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Starting From',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  Text(
                                    '30 SAR',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 95.0.w,
                                //height: 50.0.h,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0.r),
                                      ),
                                      primary: AppColors.colorPrimary),
                                  child: const Text('View'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                    );
                  },
                ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
