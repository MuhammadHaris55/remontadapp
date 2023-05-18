import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import '../../common_widgets/custom_text.dart';
import 'play_tournament.dart';

class AddFriends extends StatelessWidget {
  const AddFriends({super.key});

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
              // radius: 30,
              backgroundColor: AppColors.backgroundColor,
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
                    "Choose",
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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "Recently Viewed",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   width: 5,
                      // ),
                      Flexible(
                        child: Text(
                          "See All",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15.0.sp,
                            color: AppColors.colorPrimary,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40.h,
            ),
            // ListView.builder(
            //   itemCount: 4,
            //   // yourData.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       padding: EdgeInsets.symmetric(
            //         horizontal: 15.w,
            //         vertical: 10.h,
            //       ),
            //       decoration: BoxDecoration(
            //         border: Border(
            //           bottom: BorderSide(
            //             color: Colors.grey.shade300,
            //             width: 1.0,
            //           ),
            //         ),
            //       ),
            //       child: Row(
            //         children: [
            //           CircleAvatar(
            //             radius: 24.0,
            //             backgroundColor: Colors.white,
            //             child: Image.asset(
            //               'assets/images/profile1.png',
            //               fit: BoxFit.cover,
            //               width: 40.0,
            //               height: 40.0,
            //             ),
            //           ),
            //           SizedBox(width: 10.w),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Ali Ahmed",
            //                 style: TextStyle(
            //                   color: AppColors.colorBlack,
            //                   fontWeight: FontWeight.w600,
            //                   fontSize: 18.0.sp,
            //                 ),
            //               ),
            //               SizedBox(height: 5.h),
            //               Text(
            //                 'Team Lead',
            //                 style: TextStyle(
            //                   color: AppColors.colorGrey,
            //                   fontWeight: FontWeight.w400,
            //                   fontSize: 14.0.sp,
            //                 ),
            //               ),
            //             ],
            //           ),
            //           Spacer(),
            //           IconButton(
            //             icon: Icon(
            //               Icons.delete_outline_rounded,
            //               color: Colors.grey.shade400,
            //             ),
            //             onPressed: () {
            //               // delete function
            //             },
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            // ),
            /////////////////////////////////////
            // ListView.builder(
            //   itemCount: dummyData.length,
            //   itemBuilder: (context, index) {
            //     return Padding(
            //       padding: EdgeInsets.symmetric(
            //         horizontal: 15.w,
            //         vertical: 10.h,
            //       ),
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           CircleAvatar(
            //             child: Image.asset(
            //               'assets/images/profile1.png',
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //           Padding(
            //             padding: EdgeInsets.all(10.0.h),
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               mainAxisAlignment: MainAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   dummyData[index]['name'],
            //                   style: TextStyle(
            //                     color: AppColors.colorBlack,
            //                     fontWeight: FontWeight.w600,
            //                     fontSize: 18.sp,
            //                   ),
            //                 ),
            //                 Text(
            //                   dummyData[index]['jobTitle'],
            //                   style: TextStyle(
            //                     color: AppColors.colorGrey,
            //                     fontWeight: FontWeight.w400,
            //                     fontSize: 12.sp,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           const Spacer(),
            //           TextButton(
            //               onPressed: () {
            //                 // onPressed function
            //               },
            //               child: GothamTextH1(
            //                 text: 'X',
            //               ))
            //         ],
            //       ),
            //     );
            //   },
            // ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.w,
                // vertical: 10.h,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.backgroundColor,
                    child: Image.asset(
                      'assets/images/frnd1.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15..w,
                // vertical: 10.h,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.backgroundColor,
                    child: Image.asset(
                      'assets/images/frnd2.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15..w,
                // vertical: 10.h,
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.backgroundColor,
                    child: Image.asset(
                      'assets/images/frnd3.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
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
            // Spacer(),
          ],
        ),
      ),
    );
  }
}
