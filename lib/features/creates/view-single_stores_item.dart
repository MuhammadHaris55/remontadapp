import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/add_store.dart';

import '../../common_widgets/custom_button.dart';

class ViewSingleStoreItem extends StatelessWidget {
  const ViewSingleStoreItem({super.key});

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
                          "XYZ Stores",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            // const SizedBox(
            //   height: 24,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('assets/images/ball.png'),
                      fit: BoxFit.cover,
                      width: 320.0.w,
                      //  height: 320.0.h,
                    ),
                  ),
                  Divider(
                    thickness:
                        1.r, // Customize the thickness of the divider line
                    color:
                        Colors.grey, // Customize the color of the divider line
                  ),
                  // Rest
                  SizedBox(
                    // width: 430.w,
                    //height: 379.h,
                    // elevation:3,
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Football",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 35.0.sp,
                                  color: AppColors.colorBlack,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Text(
                                '50\$',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 35.0.sp,
                                  color: AppColors.colorBlack,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 22.h,
                          ),
                          Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14.0.sp,
                              color: AppColors.colorGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          SizedBox(
                            height: 52.h,
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
                                  '+ Add to Cart',
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
