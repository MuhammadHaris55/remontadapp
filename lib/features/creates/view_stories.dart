import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/add_store.dart';
import 'package:remontada/features/creates/view-single_stores_item.dart';

import '../../common_widgets/custom_button.dart';

class ViewStries extends StatelessWidget {
  const ViewStries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
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
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          "XYZ Stores",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30.0.sp,
                            color: AppColors.colorBlack,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        Container(
                          width: 83.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            border: Border.all(
                              color:
                                  Colors.grey, // Set the border color to gray
                              width: 1.0, // Set the border width
                            ),
                            // border: BoxBorder
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Filter",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13.0.sp,
                                  color: AppColors.colorBlack,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(
                //   width: 30.w,
                // ),
                IconButton(
                  icon: Icon(
                    Icons.add_circle_outline,
                    color: Colors.black,
                    size: 33.r,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddStore()),
                    );
                  },
                  // onPressed: () =>
                  //     Navigator.pushNamed(context, EditProfile.routeName),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  // SizedBox(
                  //   height: 21.h,
                  // ),
                  SingleChildScrollView(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ViewSingleStoreItem()),
                        );
                      },
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns in the grid
                          childAspectRatio: 193.w /
                              300.h, // Width-to-height ratio of each item
                          crossAxisSpacing: 10.0, // Spacing between columns
                          mainAxisSpacing: 10.0, // Spacing between rows
                        ),
                        itemCount: ViewStrioesData.length,
                        shrinkWrap: true,
                        physics:
                            NeverScrollableScrollPhysics(), // Disable scrolling of the GridView
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            decoration: BoxDecoration(
                              color: AppColors.backgroundColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10.r),
                                bottomLeft: Radius.circular(40.r),
                                topLeft: Radius.circular(10.r),
                                bottomRight: Radius.circular(0.r),
                              ),
                              border: Border.all(
                                color: AppColors.colorGrey,
                                width: 1.0.w,
                              ),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  width: 193.w,
                                  height: 300.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: AppColors.backgroundColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.r),
                                      bottomLeft: Radius.circular(40.r),
                                      topLeft: Radius.circular(10.r),
                                      bottomRight: Radius.circular(0.r),
                                    ),
                                    border: Border.all(
                                      color: AppColors.colorGrey,
                                      width: 1.0.w,
                                    ),
                                  ),
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                        child: Image.asset(
                                          ViewStrioesData[index]['image']!,
                                          fit: BoxFit.cover,
                                          height: 230.h,
                                          //  width: 193.w,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(50.r),
                                      bottomLeft: Radius.circular(30.r),
                                    ),
                                    child: Container(
                                      width: 176.w,
                                      height: 68.h,
                                      color: AppColors.colorPrimary,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              ViewStrioesData[index]
                                                  ['productname']!,
                                              style: TextStyle(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 15.0,
                                                color:
                                                    AppColors.backgroundColor,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                            Text(
                                              '50\$',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 21.0,
                                                color:
                                                    AppColors.backgroundColor,
                                                fontStyle: FontStyle.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ), // Replace with your desired color
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  // SizedBox(
                  //   height: 26.h,
                  // )
                  //       ),
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
            //  Spacer(),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
