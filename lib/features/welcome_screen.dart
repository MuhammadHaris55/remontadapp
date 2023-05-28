import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/global_variables.dart';
import '../constants/utils.dart';
import 'creates/find_stories.dart';
import 'home/Auth/login.dart';
import 'home/Auth/registration.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  //TextEditingController emailController,
  /// TextEditingController passwordController,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w),
        color: AppColors.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.0.h),
            //const Spacer(),
            Image.asset(
              AssetImages.appLogo,
              width: 600.w,
            ),
            //const SizedBox(height: 10.0),
            //const Spacer(),
            Text(
              'Welcome',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 50.0.sp,
                color: AppColors.colorBlack,
                fontStyle: FontStyle.normal,
              ),
            ),
            SizedBox(height: 10.0.h),

            SizedBox(
              width: 342.0.w,
              height: 50.0.h,
              child: ElevatedButton(
                onPressed: () {
                  showSnackBar(context, "Functionality under process");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const MainCreateScreen()),
                  // );
                }, // yai mera project hai acahw chup chap dykhu .. tnag nhi kary
                //
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.colorBlue),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/facebook.png'),
                      width: 20.0.w,
                      height: 20.0.h,
                    ),
                    SizedBox(width: 10.0.w),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0.sp,
                        color: AppColors.backgroundColor,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.0.h),
            SizedBox(
              width: 342.0.w,
              height: 50.0.h,
              child: ElevatedButton(
                  onPressed: () {
                    showSnackBar(context, "Functionality under process");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FindStries()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.backgroundColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                        image: AssetImage('assets/images/Google.png'),
                        // width: 20.0,
                        // height: 20.0,
                      ),
                      SizedBox(width: 10.0.w),
                      Text(
                        'Google',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0.sp,
                          color: AppColors.colorBlack,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(height: 20.0.h),
            SizedBox(
              width: 342.0.w,
              height: 50.0.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 3.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.colorPrimary),
                child: Text('Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0.sp,
                      color: AppColors.backgroundColor,
                      fontStyle: FontStyle.normal,
                    )),
              ),
            ),
            SizedBox(height: 17.0.h),
            Text(
              'Don\'t have an account? ',
              style: TextStyle(
                color: AppColors.colorBlack,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 5.0.h),
            GestureDetector(
              // onTap: () {
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const RegistrationScreen()),
                );
                // },
              },
              child: Text(
                'Create Account',
                style: TextStyle(
                  color: AppColors.colorPrimary,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Spacer(),
            SizedBox(height: 10.0.h),
          ],
        ),
      ),
    );
  }
}
