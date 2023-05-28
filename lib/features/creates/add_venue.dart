import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/add_store.dart';
import 'package:remontada/features/creates/card_summary.dart';

class AddVenue extends StatelessWidget {
  const AddVenue({super.key});

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
                const Text(
                  "Add Venue",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30.0,
                    color: AppColors.colorBlack,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRectangularTextFormField(hintText: 'Name'),

                    const SizedBox(height: 32.0),
                    CustomRow(
                      text: 'Add Cover Photo',
                      icon: const Icon(
                        Icons.add_circle,
                        color: AppColors.colorPrimary,
                      ),
                      color: AppColors.colorPrimary,
                    ),
                    // CustomRectangularTextFormField(
                    //     hintText: 'Email'), // TextField(

                    const SizedBox(height: 32.0),
                    // customDropDownButton(school: 'Sports'),
                    SizedBox(height: 24.0.h),
                    CustomRectangularTextFormField(hintText: 'Location'),
                    const SizedBox(height: 32.0),
                    CustomRow(
                      text: 'Select Timing',
                      icon: const Icon(
                        Icons.add_circle,
                        color: AppColors.colorPrimary,
                      ),
                      color: AppColors.colorPrimary,
                    ),
                    SizedBox(height: 24.0.h),
                    CustomRectangularTextFormField(hintText: 'Cost'),

                    SizedBox(
                      height: 90.h,
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
                    //Spacer(),
                    SizedBox(
                      width: 342.0,
                      height: 50.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddStore()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(color: Colors.white),
                            elevation: 5.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            primary: AppColors.colorPrimary),
                        child: const Text('Play'),
                      ),
                    ),
                    // const SizedBox(height: 16.0),
                  ],
                ),
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
