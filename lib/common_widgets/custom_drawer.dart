import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/home/Auth/contactus.dart';
import '../features/drawer_screens/history.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text(
          //     'Drawer Header',
          //     style: TextStyle(
          //       color: Colors.white,
          //       fontSize: 24,
          //     ),
          //   ),
          // ),
          SizedBox(height: 120.0.h),

          ListTile(
            leading: const Icon(Icons.note_alt_outlined),
            title: Text(
              'History',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => History()),
              );
            },
          ),

          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
          ListTile(
            leading: const Icon(Icons.check_box_outlined),
            title: Text(
              'Vat Bills',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/screen1');
            },
          ),
          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
          ListTile(
            leading: const Icon(Icons.phone_in_talk_outlined),
            title: Text(
              'Contact Us',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContactUs()),
              );
            },
          ),
          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
          ListTile(
            leading: const Icon(Icons.checklist_rtl_outlined),
            title: Text(
              'Terms & Condition',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
          ListTile(
            leading: const Icon(Icons.group_add_outlined),
            title: Text(
              'Add Account',
              style: TextStyle(fontSize: 23.0.sp, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
          Divider(
            indent: 30.0.w,
            endIndent: 30.0.w,
          ),
        ],
      ),
    );
  }
}
