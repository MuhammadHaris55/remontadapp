import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/global_variables.dart';

class ProfileAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
