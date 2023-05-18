import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import '../../common_widgets/custom_text.dart';

class PlayTournament extends StatelessWidget {
  const PlayTournament({super.key});

  @override
  Widget build(BuildContext context) {
    FocusNode _noFocusNode = new FocusNode();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Row(
          children: [
            CircleAvatar(
              //   minRadius: 24,
              //   backgroundColor: const Color.fromARGB(126, 6, 6, 6),
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
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                // const SizedBox(
                //   width: 5,
                // ),
                Flexible(
                  child: Text(
                    "XYZ Tournaments",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 36.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    color: AppColors.colorGrey,
                    width: 37.w,
                    height: 37.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Country Club, Saudi Arabia',
                        style: TextStyle(
                          color: AppColors.colorBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0.sp,
                        ),
                      ),
                      Text(
                        'January 22, 2023 - 2.00 PM ',
                        style: TextStyle(
                          color: AppColors.colorGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0.sp,
                        ),
                      ),
                    ],
                  )
                  // Icon(
                  //   Icons.location_on_outlined,
                  //   color: AppColors.colorGrey,
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/coins.png',
                    color: AppColors.colorGrey,
                    width: 37.w,
                    height: 37.h,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '1200 SR',
                        style: TextStyle(
                          color: AppColors.colorBlack,
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0.sp,
                        ),
                      ),
                    ],
                  )
                  // Icon(
                  //   Icons.location_on_outlined,
                  //   color: AppColors.colorGrey,
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 359,
                height: 162,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 2.0.r,
                      spreadRadius: 1.0.r,
                      offset: const Offset(
                        0.0,
                        1.0,
                      ), // shadow direction: bottom right
                    )
                  ],
                ),

                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15..w,
                    vertical: 10.h,
                  ),
                  child: Column(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.center,

                    /// mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Team - 1",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 20.0.sp,
                            ),
                          ),
                          Text(
                            '6/9 players',
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0.sp,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(12.0.h),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              //  radius: 30,
                              //,
                              child: Image.asset(
                                'assets/images/profile1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0.h),
                              child: Column(
                                //crossAxisAlignment: CrossAxisAlignment.start,
                                ///  mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Ali Ahmed",
                                    style: TextStyle(
                                      color: AppColors.colorBlack,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0.sp,
                                    ),
                                  ),
                                  Text(
                                    'Team Lead',
                                    style: TextStyle(
                                      color: AppColors.colorGrey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12.0.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  // onPressed function
                                },
                                child: GothamTextH1(
                                  text: 'X',
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        height: 30.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .white, // Sets the background color to white
                            side: const BorderSide(
                              color: AppColors
                                  .colorPrimary, // Sets the outer border color to pink
                            ),
                          ),
                          child: const Text(
                            '+Add player',
                            style: TextStyle(
                              color: AppColors
                                  .colorPrimary, // Sets the text color to black
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 230.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Amount will be equally divided into the teams once the number on teams will be finalized.',
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            SizedBox(
              width: 342.0.w,
              height: 50.0.h,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const PlayTournament()),
                  // );
                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.colorPrimary),
                child: const Text('Play'),
              ),
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        ),
      ),
    );
  }
}
