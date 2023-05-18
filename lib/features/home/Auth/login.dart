import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/features/home/screens/home_screen.dart';
import '../../../common_widgets/bottom_bar.dart';
import '../../../constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //TextEditingController emailController,
  /// TextEditingController passwordController,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(right: 30.0.w, left: 30.0.w),
        child: ListView(
          /// mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30.0.h),
            //const Spacer(),
            Container(
              //   color: Colors.red,
              child: Image.asset(
                AssetImages.appLogo,
                //     width: 600,
              ),
            ),
            //const SizedBox(height: 10.0),
            //const Spacer(),
            Center(
              child: Text(
                'Hello!',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 50.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

            SizedBox(height: 10.0.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'UserName',
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(
                    //   color: Colors.pink,
                    width: 3.w,
                    // style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(10.r),
                fillColor: Colors.white,
              ),
            ),
            // CustomTextFormField(
            //   //  textEditingController: emailController,
            //   hintText: 'Email',
            //  icon: const Icon(Icons.mail),
            // ),
            SizedBox(height: 23.0.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(
                    //color: Colors.pink,
                    width: 3.w,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16.r),
                fillColor: Colors.white,
              ),
            ),
            // CustomTextFormField(
            //   // textEditingController: passwordController,
            //   hintText: 'Password',
            //   icon: const Icon(Icons.lock),
            //   obscure: true,
            // ),
            SizedBox(height: 20.0.h),
            SizedBox(
              width: 342.0.w,
              //height: 50.0.h,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BottomBar()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.colorPrimary),
                child: const Text('Login'),
              ),
            ),

            ///const Spacer(),
            SizedBox(height: 10.0.h),
          ],
        ),
      ),
    );
  }
}
