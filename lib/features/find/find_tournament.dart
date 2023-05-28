import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/profile_appbar.dart';
import '../../constants/global_variables.dart';
import '../../common_widgets/custom_row.dart';

class FindTournament extends StatefulWidget {
  const FindTournament({super.key});

  @override
  State<FindTournament> createState() => _FindTournamentState();
}

class _FindTournamentState extends State<FindTournament> {
  double _height = 100.0;
  final ScrollController _scrollController = ScrollController();

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
                          "Tournament",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "35 Facilities",
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
                CustomRow(
                  text: 'Select sports',
                  icon: const Icon(
                    Icons.sports,
                    color: AppColors.colorPrimary,
                  ),
                  color: AppColors.colorPrimary,
                ),
                SizedBox(height: 20.0.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, size: 30.sp),
                      onPressed: () {
                        _animateToIndex(-1);
                      },
                    ),
                    SizedBox(
                      // width: MediaQuery.of(context).size.width / 1.9.w,
                      width: MediaQuery.of(context).size.width / 1.93.w,
                      height: 100.h,
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: 20,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Column(
                              children: [
                                const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/ball1.png'),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Username',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, size: 30.sp),
                      onPressed: () {
                        _animateToIndex(1);
                        // handle forward button press
                      },
                    )
                  ],
                ),
                SizedBox(height: 20.0.h),
                const Text(
                  'Let\'s explore',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20.0.h),
                SizedBox(
                  // width: MediaQuery.of(context).size.width / 1.93.w,
                  height: 65.h,
                  child: ListView.builder(
                    // controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 20,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(8.0.w),
                        decoration: BoxDecoration(
                          color: index == 4
                              ? AppColors.colorPrimary
                              : Colors.white,
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        child: Column(
                          children: [
                            Text(
                              '${index + 1}',
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Sun',
                              style: TextStyle(
                                fontSize: 16.sp,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
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
                            'assets/images/find_tournament.png',
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
                                children: [
                                  const Text(
                                    'Tomorrow, 16 March',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.timer_outlined,
                                        size: 15,
                                      ),
                                      SizedBox(width: 10.0.w),
                                      const Text('06:00AM : 9:00AM'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        size: 15,
                                      ),
                                      SizedBox(width: 10.0.w),
                                      const Text('Jeddah'),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.groups_outlined,
                                        size: 15,
                                      ),
                                      SizedBox(width: 10.0.w),
                                      const Text('6 out of 9'),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '80 SAR',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    width: 95.0.w,
                                    //height: 50.0.h,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          textStyle: const TextStyle(
                                              color: Colors.white),
                                          elevation: 0.0,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0.r),
                                          ),
                                          primary: AppColors.colorPrimary),
                                      child: const Text('Join'),
                                    ),
                                  ),
                                ],
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

  void _animateToIndex(int index) {
    setState(() {
      _height += _height;
    });
    _scrollController.animateTo(
      _height,
      duration: Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
    );
  }
}
