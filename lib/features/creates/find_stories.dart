import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';

class FindStries extends StatelessWidget {
  const FindStries({super.key});

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
                    child: Text(
                      "Find Stories",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 30.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 30.w,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: ListView.builder(
                        itemCount: dummyData1.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: ListTile(
                              title: Column(
                                children: [
                                  Text(dummyData1[index]
                                      ['storename']), // Displaying store name
                                  Text(dummyData1[index]['location']),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
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
