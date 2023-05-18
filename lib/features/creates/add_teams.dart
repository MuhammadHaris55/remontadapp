import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import '../../common_widgets/custom_text.dart';

class AddTeams extends StatelessWidget {
  const AddTeams({super.key});

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
                  child: Center(
                    child: Text(
                      "TEAMS",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
            SizedBox(
              height: 38.h,
            ),

            // SizedBox(
            //   height: 40.h,
            // ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 366.w,
                height: 98.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 5.0.r,
                      spreadRadius: 2.0.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Team - 1",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 26.0.sp,
                            ),
                          ),
                          Text(
                            "12 Players . Riyadh",
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        minRadius: 40.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          'assets/images/ball.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Spacer(),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 366.w,
                height: 98.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 5.0.r,
                      spreadRadius: 2.0.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Team - 2",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 26.0.sp,
                            ),
                          ),
                          Text(
                            "12 Players . Riyadh",
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        minRadius: 40.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          'assets/images/ball1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 366.w,
                height: 98.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 5.0.r,
                      spreadRadius: 2.0.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Team - 3",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 26.0.sp,
                            ),
                          ),
                          Text(
                            "12 Players . Riyadh",
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        minRadius: 40.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          'assets/images/ball2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 366.w,
                height: 98.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 5.0.r,
                      spreadRadius: 2.0.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Team - 4",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 26.0.sp,
                            ),
                          ),
                          Text(
                            "12 Players . Riyadh",
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        minRadius: 40.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          'assets/images/ball3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 366.w,
                height: 98.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 5.0.r,
                      spreadRadius: 2.0.r,
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
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Team - 5",
                            style: TextStyle(
                              color: AppColors.colorBlack,
                              fontWeight: FontWeight.w400,
                              fontSize: 26.0.sp,
                            ),
                          ),
                          Text(
                            "12 Players . Riyadh",
                            style: TextStyle(
                              color: AppColors.colorGrey,
                              fontWeight: FontWeight.w400,
                              fontSize: 13.0.sp,
                            ),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        minRadius: 40.r,
                        backgroundColor: AppColors.backgroundColor,
                        child: Image.asset(
                          'assets/images/ball4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),

            // SizedBox(
            //   height: 20.h,
            // )
          ],
        ),
      ),
    );
  }
}
