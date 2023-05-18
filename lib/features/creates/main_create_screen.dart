import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_button.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/create_events.dart';
import 'package:remontada/features/creates/create_teams.dart';
import 'package:remontada/features/creates/create_tournament.dart';
import 'create_group.dart';

class MainCreateScreen extends StatelessWidget {
  const MainCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Row(
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
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
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
                // const SizedBox(
                //   width: 5,
                // ),
                Flexible(
                  child: Text(
                    "Create",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                SizedBox(
                  width: 40.w,
                ),
                // const Expanded(
                //   child: Divider(
                //     thickness: 2,
                //     // endIndent: 6,
                //     // indent: 4,
                //     // height: 5,
                //     color: AppColors.colorPrimary,
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.all(5.r),
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 2.h,
                    width: MediaQuery.of(context).size.width / 2.7.w,
                    color: AppColors.colorPrimary,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: AppColors.colorBlack,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                width: 393.w,
                height: 489.h,
                //  margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.colorGrey,
                      blurRadius: 2.0.r,
                      spreadRadius: 1.0.r,
                      offset: const Offset(
                        0.0,
                        1.0,
                      ), // shadow direction: bottom right
                    )
                  ],
                ),

                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 31.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SubmitButtonColor(
                        text: 'Create Tournament',
                        icon: const Icon(
                          Icons.add_circle,
                          color: AppColors.backgroundColor,
                        ),
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateTournament()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SubmitButton(
                          text: 'Create Group           ',
                          icon: const Icon(
                            Icons.add_circle,
                            color: AppColors.colorPrimary,
                          ),
                          function: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateGroup()),
                            );
                          }),
                      SizedBox(
                        height: 40.h,
                      ),
                      SubmitButton(
                        text: 'Create Event            ',
                        icon: const Icon(
                          Icons.add_circle,
                          color: AppColors.colorPrimary,
                        ),
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateEvent()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      SubmitButton(
                        text: 'Create Team            ',
                        icon: const Icon(
                          Icons.add_circle,
                          color: AppColors.colorPrimary,
                        ),
                        function: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CreateTeams()),
                          );
                        },
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
