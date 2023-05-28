import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';

class CardSummary extends StatelessWidget {
  const CardSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: EdgeInsets.all(8.0.r),
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
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //       builder: (context) => const CardSummary()),
                    // );
                  },
                  // onPressed: () =>
                  //     Navigator.pushNamed(context, EditProfile.routeName),
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  "Card Summary",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0.sp,
                    color: AppColors.colorBlack,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Center(
                    //   child: Container(
                    //     height: 40.h,
                    //     width: 300.w,
                    //     color: Color.fromARGB(255, 188, 183, 183),
                    //   ),
                    // ),
                    Center(
                      child: Container(
                        // height: 300.h,
                        width: 382.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 232, 241),
                          borderRadius: BorderRadius.circular(10.r),
                          // border: Border.all(
                          //   color: AppColors.colorGrey,
                          //   width: 1.0.w,
                          // ),
                        ),
                        // color: Color.fromARGB(255, 227, 228, 239),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Cardholder Name",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.0.sp,
                                  color: AppColors.colorGrey,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Diana Eliza",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.0.sp,
                                  color: AppColors.colorBlack,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text("Card Number",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.0.sp,
                                    color: AppColors.colorGrey,
                                    fontStyle: FontStyle.normal,
                                  )),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    color: AppColors.colorPrimary,
                                    size: 20.h,
                                  ),
                                  Text(
                                    " 2536 3587 5300 5682",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Card Number",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0.sp,
                                        color: AppColors.colorGrey,
                                        fontStyle: FontStyle.normal,
                                      )),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  Text(" CVV",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18.0.sp,
                                        color: AppColors.colorGrey,
                                        fontStyle: FontStyle.normal,
                                      )),
                                ],
                              ),
                              Row(
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "01/12             ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 100.w,
                                  ),
                                  Text(
                                    " ...",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 22.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Center(
                      child: Container(
                        // height: 120.h,
                        width: 382.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 231, 232, 241),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // SizedBox(
                              //   height: 10.h,
                              // ),
                              Column(
                                children: [
                                  Text(
                                    "Received",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0.sp,
                                      color: AppColors.colorGrey,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  Text(
                                    "500SAR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Available",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0.sp,
                                      color: AppColors.colorGrey,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  Text(
                                    "1300SAR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Sent",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0.sp,
                                      color: AppColors.colorGrey,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  Text(
                                    "75SAR",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0.sp,
                                      color: AppColors.colorBlack,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   height: 10.h,
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 1.6.h,
                      width: 382.w,
                      color: AppColors.colorGrey,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Tournament Name Joing Fees",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4:49 Pm 29/1/2023",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "75SAR",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0.sp,
                            color: AppColors.colorPrimary,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      height: 1.6.h,
                      width: 382.w,
                      color: AppColors.colorGrey,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "Tournament Name Joing Fees",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "4:49 Pm 29/1/2023",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Text(
                          "75SAR",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20.0.sp,
                            color: AppColors.colorPrimary,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
