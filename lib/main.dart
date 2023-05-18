import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/features/welcome_screen.dart';
import 'constants/global_variables.dart';

//import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Remontada',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: AppColors.colorPrimary,
            ),
            appBarTheme: const AppBarTheme(
              toolbarHeight: 70,
              elevation: 0,
              iconTheme: IconThemeData(
                // backgroundColor: AppColors.colorOrange,
                color: Colors.black,
              ),
            ),

            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: Color(0xffffffff),
              iconColor: AppColors.colorGrey,
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Color(0xfff1f2ef), fontSize: 18),
              hintStyle: TextStyle(
                color: AppColors.colorGrey,
                // fontFamily: appFontFamily,
              ),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
              // border: DecoratedInputBorder(
              //   shadow: const BoxShadow(
              //     color: Color.fromRGBO(142, 142, 142, 0.5),
              //     blurRadius: 2,
              //     offset: Offset(0, 1),
              //   ),
              //   child: OutlineInputBorder(
              //     borderSide: BorderSide.none,
              //     // borderSide: const BorderSide(
              //     //   color: Color.fromRGBO(142, 142, 142, 0.1),
              //     //   width: 0.2,
              //     // ),
              //     borderRadius: BorderRadius.circular(5.0),
              //   ),
              // ),
            ),
            // -------------------------------------------------------------------------
          ),
          //  onGenerateRoute: (settings) => generateRoute(settings),
          home: child,
        );
      },
      child: WelcomeScreen(),
    );
  }
}

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        color: AppColors.backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30.0),
            const Spacer(),
            Image.asset(
              AssetImages.appLogo,
              width: 600,
            ),
            const Spacer(),
            const Text(
              'Powered By',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: AppColors.colorGrey,
                fontWeight: FontWeight.w300,
                fontSize: 14.0,
              ),
            ),
            const Text( 
              'Remontada',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: AppColors.colorGrey,
                fontWeight: FontWeight.w300,
                fontSize: 18.0,
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
