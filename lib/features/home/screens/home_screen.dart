import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            onPressed: () {},
            // onPressed: () =>
            //     Navigator.pushNamed(context, EditProfile.routeName),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(24.r, 10.r, 24.r, 21.r),
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
                endIndent: 86.r,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22.0.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
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
                    // SizedBox(
                    //   height: 24.h,
                    // ),
                    Container(
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
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Image.asset(
                              'assets/images/trainer1.png',
                              fit: BoxFit.fill,
                              // height: 113.5.h,
                              // width: 174.w,
                              height: 102.5.h,
                              width: 174.w,
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
                            'assets/images/gym.png',
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
                ],
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
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
                        'assets/images/head.png',
                        fit: BoxFit.cover,
                        height: 113.5.h,
                        width: 385.w,
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
                          'Vanue',
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
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Shop',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Container(
                    height: 2.h,
                    width: MediaQuery.of(context).size.width / 2.w,
                    color: AppColors.colorPrimary,
                  ),
                  Icon(
                    Icons.shop,
                    size: 30.sp,
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, size: 30.sp),
                    onPressed: () {
                      _animateToIndex(-1);
                    },
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.9.w,
                    height: 100.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ListView.builder(
                          controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0.r),
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/images/profile1.png'),
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

                        // Positioned(
                        //   left: 0,
                        //   child: IconButton(
                        //     icon: Icon(Icons.arrow_back),
                        //     onPressed: () {
                        //       // handle back button press
                        //     },
                        //   ),
                        // ),
                        // Positioned(
                        //   right: 0,
                        //   child: IconButton(
                        //     icon: Icon(Icons.arrow_forward),
                        //     onPressed: () {
                        //       // handle forward button press
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward, size: 30.sp),
                    onPressed: () {
                      _animateToIndex(1);
                      // handle forward button press
                    },
                  )
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Challesges',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Container(
                      height: 2.h,
                      width: MediaQuery.of(context).size.width / 3.w,
                      color: AppColors.colorPrimary,
                    ),
                  ),
                  Icon(Icons.shop, size: 30.sp)
                ],
              ),
              SizedBox(height: 10.h),
              Container(
                height: 89.h,
                width: 359.w,
                color: AppColors.backgroundColor,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 96.77.w,
                      height: 89.12.h,
                      child: Image.asset(
                        'assets/images/player1.png', // replace with your own image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        // Row(
                        //   children: [
                        //     Text("data"),
                        //     Text("data"),
                        //   ],
                        // ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              alignment: Alignment.topLeft,
                              icon: Icon(
                                Icons.access_time,
                                color: AppColors.colorGrey,
                                size: 20.sp,
                              ),
                              onPressed: () {},
                              // onPressed: () =>
                              //     Navigator.pushNamed(context, EditProfile.routeName),
                            ),
                            Text("data"),
                          ],
                        ),
                      
                      ],
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
                          width: 60.0.w,
                          height: 20.0.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
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
                                fontWeight: FontWeight.w500,
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
              ),
              // Container(
              //   height: 89.h,
              //   width: 359.w,
              //   color: AppColors.backgroundColor,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       SizedBox(
              //         width: 96.77.w,
              //         height: 89.12.h,
              //         child: Image.asset(
              //           'assets/images/player1.png', // replace with your own image path
              //           fit: BoxFit.cover,
              //         ),
              //       ),
              //       Expanded(
              //         child: Padding(
              //           padding: EdgeInsets.all(8.0.r),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             mainAxisAlignment: MainAxisAlignment.start,
              //             children: [
              //               Text(
              //                 'Tomorrow, 16 March',
              //                 style: TextStyle(
              //                   fontWeight: FontWeight.w500,
              //                   fontSize: 14.0.sp,
              //                   color: AppColors.colorBlack,
              //                   fontStyle: FontStyle.normal,
              //                 ),
              //               ),
              //               Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 children: [
              //                   IconButton(
              //                     icon: Icon(
              //                       Icons.access_time,
              //                       color: AppColors.colorGrey,
              //                       size: 20.sp,
              //                     ),
              //                     onPressed: () {},
              //                     // onPressed: () =>
              //                     //     Navigator.pushNamed(context, EditProfile.routeName),
              //                   ),
              //                   Expanded(
              //                     child: Text(
              //                       '06:00AM : 9:00AM',
              //                       style: TextStyle(
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 10.0.sp,
              //                         color: AppColors.colorGrey,
              //                         fontStyle: FontStyle.normal,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 children: [
              //                   IconButton(
              //                     icon: Icon(
              //                       Icons.access_time,
              //                       color: AppColors.colorGrey,
              //                       size: 20.sp,
              //                     ),
              //                     onPressed: () {},
              //                     // onPressed: () =>
              //                     //     Navigator.pushNamed(context, EditProfile.routeName),
              //                   ),
              //                   Expanded(
              //                     child: Text(
              //                       '06:00AM : 9:00AM',
              //                       style: TextStyle(
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 10.0.sp,
              //                         color: AppColors.colorGrey,
              //                         fontStyle: FontStyle.normal,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //               Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.start,
              //                 children: [
              //                   IconButton(
              //                     icon: Icon(
              //                       Icons.access_time,
              //                       color: AppColors.colorGrey,
              //                       size: 20.sp,
              //                     ),
              //                     onPressed: () {},
              //                     // onPressed: () =>
              //                     //     Navigator.pushNamed(context, EditProfile.routeName),
              //                   ),
              //                   Expanded(
              //                     child: Text(
              //                       '06:00AM : 9:00AM',
              //                       style: TextStyle(
              //                         fontWeight: FontWeight.w600,
              //                         fontSize: 10.0.sp,
              //                         color: AppColors.colorGrey,
              //                         fontStyle: FontStyle.normal,
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           const Text('80 SAR'),
              //           SizedBox(
              //             width: 60.0.w,
              //             height: 20.0.h,
              //             child: ElevatedButton(
              //               onPressed: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => HomeScreen()),
              //                 );
              //               },
              //               style: ElevatedButton.styleFrom(
              //                   textStyle: const TextStyle(color: Colors.white),
              //                   elevation: 0.0,
              //                   shape: RoundedRectangleBorder(
              //                     borderRadius: BorderRadius.circular(10.0.r),
              //                   ),
              //                   primary: AppColors.colorPrimary),
              //               child: const Text('Join'),
              //             ),
              //           ),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby Challesges',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                    child: Container(
                      height: 2.h,
                      width: MediaQuery.of(context).size.width / 3.w,
                      color: AppColors.colorPrimary,
                    ),
                  ),
                  const Icon(Icons.shop)
                ],
              ),
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
