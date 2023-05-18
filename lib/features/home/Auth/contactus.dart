import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Row(
          children: [
            CircleAvatar(
              minRadius: 24,
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
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 31.w,
                ),
                child: Row(
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
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 27.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Container(
                width: 393.w,
                //  height: 620.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 2.0.r,
                      spreadRadius: 1.0.r,
                      offset: Offset(
                        0.0.r,
                        1.0.r,
                      ), // shadow direction: bottom right
                    )
                  ],
                ),

                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 31.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomRectangularTextFormField(hintText: 'Name'),

                      SizedBox(height: 32.0.h),
                      CustomRectangularTextFormField(
                          hintText: 'Email'), // TextField(

                      SizedBox(height: 32.0.h),
                      CustomRectangularTextFormField(hintText: 'Number'),

                      SizedBox(height: 32.0.h),
                      Container(
                        height: 201.h,
                        width: 359.w,
                        color: AppColors.colorGrey,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.top,
                          //textAlign: TextAlign.start,
                          textDirection: TextDirection.ltr,
                          maxLines: null,
                          //   minLines: 2,
                          expands: true,

                          /// keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey,
                              height: 1.5.h,
                              // set align to top-left corner
                              // alignLabelWithHint: true,
                            ),
                            //  height: 1.5,
                            // set align to top-left corner
                            alignLabelWithHint: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.r),
                              borderSide: const BorderSide(
                                color: AppColors.colorPrimary,
                                // width: 2,
                                // style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            contentPadding: EdgeInsets.all(15.r),
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0.h),
                      SizedBox(
                        width: 342.0.w,
                        height: 50.0.h,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              elevation: 5.0.r,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                              primary: AppColors.colorPrimary),
                          child: const Text('Send'),
                        ),
                      ),
                      // const SizedBox(height: 16.0),
                    ],
                  ),
                ),

                // child widget, replace with your own
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
