import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';
import '../features/home/screens/notification.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Function() openDrawer;
  const CustomAppBar({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      automaticallyImplyLeading: false,
      title: CircleAvatar(
        child: Image.asset(
          'assets/images/profile1.png',
          fit: BoxFit.cover,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.notifications_active_outlined,
            color: Colors.black,
            size: 35.0.w,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NotificationScreen()),
            );
          },
        ),
        IconButton(
          icon: Icon(
            Icons.menu_outlined,
            color: Colors.black,
            size: 35.0.w,
          ),
          onPressed: openDrawer,
        ),
        SizedBox(width: 10.0.w),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
