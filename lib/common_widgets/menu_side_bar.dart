import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/find/history.dart';

class SideMenuBar extends StatelessWidget {
  const SideMenuBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: SideMenuBarListItem.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: Image.asset(
                        SideMenuBarListItem[index]['IconImage']!,
                        width: 24,
                        height: 24,
                      ),
                      title: Text(
                        SideMenuBarListItem[index]['title']!,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 23.0.sp,
                          color: AppColors.colorBlack,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HistoryScreen()),
                        );
                      },
                    ),
                    Divider(
                      thickness: 2.sp,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
