import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/custom_dropdown.dart';
import '../../common_widgets/custom_row.dart';
import '../../common_widgets/custom_text_form.dart';
import '../../constants/global_variables.dart';
import 'confirm_order.dart';

class CreateEvent extends StatelessWidget {
  const CreateEvent({super.key});

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
                  onPressed: () {},
                  // onPressed: () =>
                  //     Navigator.pushNamed(context, EditProfile.routeName),
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Text(
                  "Create Event",
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
              height: 24.h,
            ),
            SizedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRectangularTextFormField(hintText: 'Event Name'),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomRow(
                      text: 'Add Cover Photo',
                      icon: const Icon(
                        Icons.add_circle,
                        color: AppColors.colorPrimary,
                      ),
                      color: AppColors.colorPrimary,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    customDropDownButton(
                      school: 'Select Dates',
                      dropdownOptions: const [
                        'Select Dates',
                        'Game1',
                        'Game2',
                        'Game2',
                        'Game2',
                        'Game2',
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    // CustomRectangularTextFormField(hintText: 'Select venue'),
                    // const SizedBox(
                    //   height: 24,
                    // ),
                    customDropDownButton(
                      school: 'Select Sports',
                      dropdownOptions: const [
                        'Select Sports',
                        'activity1',
                        'activity2',
                        'activity2',
                        'activity2',
                        'activity2',
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomRectangularTextFormField(hintText: 'Location'),
                    SizedBox(
                      height: 100.h,
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
                    //Spacer(),
                    SizedBox(
                      width: 342.0.w,
                      height: 50.0.h,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ConfirmOrder()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white),
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0.r),
                            ),
                            primary: AppColors.colorPrimary),
                        child: const Text('Post'),
                      ),
                    ),
                    SizedBox(height: 16.0.h),
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
