import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/card_summary.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

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
                  "Card Details",
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
                  //  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Card Number',
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
                        hintText: '2536 3587 5300 5682',
                      ),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Expire Date",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0.sp,
                                color: AppColors.colorBlack,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 45.h,
                            ),
                            Text(
                              "01/12",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0.sp,
                                color: AppColors.colorGrey,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Container(
                              height: 1.6.h,
                              width: 107.w,
                              color: AppColors.colorGrey,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 100.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "CVV",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 22.0.sp,
                                color: AppColors.colorBlack,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(
                              height: 45.h,
                            ),
                            Text(
                              "123",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20.0.sp,
                                color: AppColors.colorGrey,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Container(
                              height: 1.6.h,
                              width: 107.w,
                              color: AppColors.colorGrey,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 55.h,
                    ),
                    Text(
                      "Cardholder Name",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    SizedBox(
                      height: 45.h,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(
                        //   borderSide: BorderSide(
                        //       // color: AppColors.colorPrimary,
                        //       ), // Specify the color of the bottom border
                        // ),
                        hintText: 'John Doe',
                      ),
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
                            'Card Save.',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 90.h,
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
                          child: const Text('Confirm'),
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
