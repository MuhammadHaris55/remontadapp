import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';

import '../../../common_widgets/app_bar.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(openDrawer: _openDrawer),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 35.0.w, vertical: 15.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Flexible(
                  child: Text(
                    "Notification",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                SizedBox(width: 40.w),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('New'),
                Text(
                  'See all',
                  style: TextStyle(color: AppColors.colorPrimary),
                ),
              ],
            ),
            SizedBox(height: 10.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 15.0.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Earlier'),
                Text(
                  'See all',
                  style: TextStyle(color: AppColors.colorPrimary),
                ),
              ],
            ),
            SizedBox(height: 15.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10.0.h),
            ListTile(
              leading: CircleAvatar(
                child: Image.asset(
                  'assets/images/profile1.png',
                  fit: BoxFit.cover,
                ),
              ),
              title: const Text(
                'Sara Aslam challenge You',
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.cancel_outlined),
            ),
            SizedBox(height: 10.0.h),
          ],
        ),
      ),
    );
  }
}
