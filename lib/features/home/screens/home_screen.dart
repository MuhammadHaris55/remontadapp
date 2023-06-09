import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/app_bar.dart';
import '../../../common_widgets/custom_row.dart';
import '../../../common_widgets/event_tile.dart';
import '../../../common_widgets/custom_drawer.dart';
import '../../../constants/global_variables.dart';
import '../../find/find_gym.dart';
import '../../find/find_tournament.dart';
import '../../find/find_trainer.dart';
import '../../find/find_venue.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image = 'https://profiles.ucr.edu/app/images/default-profile.jpg';
  // final _scrollController = AutoScrollController();
  final ScrollController _scrollController = ScrollController();
  double _height = 100.0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: CustomAppBar(openDrawer: _openDrawer),
      endDrawer: CustomDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0.w, vertical: 10.0.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello, Welcome',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
              Text(
                'Diana',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 21.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
              SizedBox(
                height: 27.h,
              ),
              Divider(
                color: AppColors.colorPrimary,
                thickness: 2.r,
                // indent: 262,
                endIndent: 100.0.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FindGym()),
                        );
                      },
                      child: Container(
                        width: 174.w,
                        height: 149.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.colorBlack,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColors.colorGrey,
                            width: 1.0.w,
                          ),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.asset(
                                'assets/images/gym.png',
                                fit: BoxFit.cover,
                                height: 113.5.h,
                                width: 174.w,
                              ),
                            ),
                            Container(
                              width: 173.w,
                              height: 32.5.h,
                              decoration: BoxDecoration(
                                color: AppColors.colorBlack,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  'Gym',
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w700,
                                    fontSize: 14.0,
                                    color: AppColors.backgroundColor,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 24.h,
                    // ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FindTrainer()),
                        );
                      },
                      child: Container(
                        width: 174.w,
                        height: 149.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.backgroundColor,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColors.colorGrey,
                            width: 1.0,
                          ),
                        ),
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0.r),
                                  topRight: Radius.circular(10.0.r),
                                ),
                                child: Image.asset(
                                  'assets/images/trainer_full.png',
                                  fit: BoxFit.cover,
                                  // height: 113.5.h,
                                  // width: 174.w,
                                  height: 102.5.h,
                                  width: 174.w,
                                ),
                              ),
                            ),
                            Container(
                              width: 173,
                              height: 32.5,
                              decoration: BoxDecoration(
                                color: AppColors.colorBlack,
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10.r),
                                  bottomRight: Radius.circular(10.r),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Trainers',
                                  style: TextStyle(
                                    //fontWeight: FontWeight.w700,
                                    fontSize: 14.0.sp,
                                    color: AppColors.backgroundColor,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 174.w,
                    height: 148.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.colorBlack,
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: AppColors.colorGrey,
                        width: 1.0.w,
                      ),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.asset(
                            'assets/images/head.png',
                            fit: BoxFit.cover,
                            height: 102.5.h,
                            width: 174.w,
                          ),
                        ),
                        Container(
                          width: 173.w,
                          height: 32.5.h,
                          decoration: BoxDecoration(
                            color: AppColors.colorBlack,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.r),
                              bottomRight: Radius.circular(10.r),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Head to Head Challenge',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontWeight: FontWeight.w700,
                                fontSize: 14.0.sp,
                                color: AppColors.backgroundColor,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 24.h,
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FindTournament()),
                      );
                    },
                    child: Container(
                      width: 174.w,
                      height: 148.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.colorBlack,
                        borderRadius: BorderRadius.circular(10.r),
                        border: Border.all(
                          color: AppColors.colorGrey,
                          width: 1.0.w,
                        ),
                      ),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              'assets/images/tournament.png',
                              fit: BoxFit.cover,
                              height: 112.5.h,
                              width: 174.w,
                            ),
                          ),
                          Container(
                            width: 173.w,
                            height: 32.5.h,
                            decoration: BoxDecoration(
                              color: AppColors.colorBlack,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(10.r),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Tournament',
                                style: TextStyle(
                                  //fontWeight: FontWeight.w700,
                                  fontSize: 14.0.sp,
                                  color: AppColors.backgroundColor,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FindVenue()),
                  );
                },
                child: Container(
                  width: 385.w,
                  height: 150.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.colorBlack,
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(
                      color: AppColors.colorGrey,
                      width: 1.0.w,
                    ),
                  ),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(
                          'assets/images/venue.png',
                          fit: BoxFit.cover,
                          height: 113.5.h,
                          // width: 385.w,
                          width: double.infinity,
                        ),
                      ),
                      Container(
                        width: 385.w,
                        height: 32.5.h,
                        decoration: BoxDecoration(
                          color: AppColors.colorBlack,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10.r),
                            bottomRight: Radius.circular(10.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Venue',
                            style: TextStyle(
                              //fontWeight: FontWeight.w700,
                              fontSize: 14.0.sp,
                              color: AppColors.backgroundColor,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomRow(
                text: 'Shop',
                icon: const Icon(Icons.factory_sharp),
                color: AppColors.colorPrimary,
              ),
              SizedBox(height: 10.0.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    constraints: BoxConstraints(minWidth: 10.0.w),
                    iconSize: 20.0.w,
                    icon: Icon(Icons.arrow_back_ios_new_sharp, size: 30.w),
                    onPressed: () {
                      _animateToIndex(-1);
                    },
                  ),
                  SizedBox(
                    // width: MediaQuery.of(context).size.width / 1.9.w,
                    // width: MediaQuery.of(context).size.width / 1.93.w,
                    width: 275.0.w,
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
                                    AssetImage('assets/images/profile1.png'),
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
                    constraints: BoxConstraints(minWidth: 10.0.w),
                    icon: Icon(Icons.arrow_forward_ios_sharp, size: 30.w),
                    onPressed: () {
                      _animateToIndex(1);
                      // handle forward button press
                    },
                  )
                ],
              ),
              SizedBox(height: 15.h),
              CustomRow(
                text: 'Nearby Challesges',
                icon: const Icon(Icons.group_sharp),
                color: AppColors.colorPrimary,
              ),
              SizedBox(height: 10.h),
              EventTile(
                imagePath: 'assets/images/player1.png',
                group: true,
              ),
              SizedBox(height: 10.h),
              CustomRow(
                text: 'Nearby Event',
                icon: const Icon(Icons.local_movies_outlined),
                color: AppColors.colorPrimary,
              ),
              SizedBox(height: 10.h),
              EventTile(
                imagePath: 'assets/images/event.png',
              ),
              SizedBox(height: 10.h),
            ],
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
