import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/view_stories.dart';

class FindStries extends StatelessWidget {
  const FindStries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
                    child: Column(
                      children: [
                        Text(
                          "Find Stories",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 30.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "28 Stories",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0.sp,
                            color: AppColors.colorGrey,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Container(
                    width: 366.w,
                    height: 202.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                    child: Card(
                      elevation: 3.r,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 20.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Viewing",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0.sp,
                                      color: AppColors.colorGrey,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.access_time_rounded,
                                  color: Colors.black,
                                ),
                                //  Icons.location_on,
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    "Location",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17.0.sp,
                                      color: AppColors.colorGrey,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Center(
                              child: SizedBox(
                                height: 47.h,
                                width: 282.w,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // Button ka functionality yahan likhein
                                  },
                                  style: ElevatedButton.styleFrom(
                                      textStyle:
                                          const TextStyle(color: Colors.white),
                                      elevation: 5.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24.0.r),
                                      ),
                                      primary: AppColors.colorPrimary),
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 22.0.sp,
                                      color: AppColors.backgroundColor,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 21.h,
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: List.generate(dummyData1.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewStries()),
                            );
                          },
                          child: Container(
                            width: 366.w,
                            height: 98.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Card(
                              elevation: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      dummyData1[index]['storename']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 24.0.sp,
                                        color: AppColors.colorBlack,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      dummyData1[index]['location']!,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13.0.sp,
                                        color: AppColors.colorGrey,
                                        fontStyle: FontStyle.normal,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  // SizedBox(
                  //   height: 26.h,
                  // )
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
            //  Spacer(),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
