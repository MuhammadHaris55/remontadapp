import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/card_summary.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({super.key});

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
                    //       builder: (context) => const ConfirmOrder()),
                    // );
                  },
                  // onPressed: () =>
                  //     Navigator.pushNamed(context, EditProfile.routeName),
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  "Your Cart",
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
                    Text(
                      'Order Details',
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(
                        //   borderSide: BorderSide(
                        //       // color: AppColors.colorPrimary,
                        //       ), // Specify the color of the bottom border
                        // ),
                        hintText: 'xyz court tornament',
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Payment",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.black,
                        ),
                        Text(
                          "...5682",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Button ka functionality yahan likhein
                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0.r),
                              ),
                              primary: AppColors.colorPrimary),
                          child: const Text('Change'),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 1.6.h,
                      width: 382.w,
                      color: AppColors.colorGrey,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Promo Code",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Add Promo Code",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0.sp,
                                color: AppColors.colorGrey,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Container(
                              height: 1.6.h,
                              width: 144.w,
                              color: AppColors.colorPrimary,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 1.6.h,
                      width: 382.w,
                      color: AppColors.colorGrey,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Text(
                      "Payment Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "xyz court tornament",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0.sp,
                              color: AppColors.colorGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Text(
                          "RS 200",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0.sp,
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
                      children: [
                        Expanded(
                          child: Text(
                            "Extra Charges",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0.sp,
                              color: AppColors.colorGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Text(
                          "RS 50",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0.sp,
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
                      children: [
                        Expanded(
                          child: Text(
                            "Grand total",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0.sp,
                              color: AppColors.colorGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Text(
                          "RS 250",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0.sp,
                            color: AppColors.colorGrey,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Container(
                      height: 1.6.h,
                      width: 382.w,
                      color: AppColors.colorGrey,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: true,
                          activeColor: AppColors.colorPrimary,
                          // focusColor: AppColors.colorPrimary,
                          // hoverColor: AppColors.colorPrimary,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: Text(
                            'I Agree To The Terms And Conditions.',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 342.0.w,
                        height: 50.0.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CardSummary()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              elevation: 5.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                              primary: AppColors.colorPrimary),
                          child: const Text('Confirm Order'),
                        ),
                      ),
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
