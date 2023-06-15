import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/add_store.dart';

import '../../common_widgets/custom_button.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: EdgeInsets.all(8.0.h),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
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
                    "WALLET",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 36.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "     12",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 64.0.sp,
                    color: AppColors.colorBlack,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                // const SizedBox(
                //   width: 5,
                // ),
                Padding(
                  padding: EdgeInsets.only(top: 19.h),
                  child: Text(
                    "SAR",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30.0.sp,
                      color: AppColors.colorBlack,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Text(
              "                       Total Amount",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 12.0.sp,
                color: AppColors.colorGrey,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),

          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              //kya code kia wa hy ye ...m ny tou aesy ni seekhaya ??
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Transactions",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Date Of Entry",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Date Of Expiry",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "Value",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 1.r, // Customize the thickness of the divider line
                  color: Colors.grey, // Customize the color of the divider line
                ),
                SizedBox(
                  height: 30.h,
                ),
                commonRowWalletData(),
              ],
            ),
          ),
          //  Spacer(),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class commonRowWalletData extends StatelessWidget {
  commonRowWalletData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Column(
          children: [
            SizedBox(
              height: 20.0.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "xyz",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "23-12-2023",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0.sp,
                        color: AppColors.colorGrey,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "-",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0.sp,
                        color: AppColors.colorGrey,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Text(
                      "4 SR",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12.0.sp,
                        color: AppColors.colorPrimary,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1.r, // Customize the thickness of the divider line
              color: Colors.grey, // Customize the color of the divider line
            ),
            SizedBox(
              height: 20.h,
            )
          ],
        );
      },
    );
  }
}
// Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "xyz",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 12.0.sp,
//                     color: AppColors.colorBlack,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//                 Text(
//                   "23-12-2023",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 12.0.sp,
//                     color: AppColors.colorBlack,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//                 Text(
//                   "-",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 12.0.sp,
//                     color: AppColors.colorBlack,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//                 Text(
//                   "4 SR",
//                   textAlign: TextAlign.left,
//                   style: TextStyle(
//                     fontWeight: FontWeight.w700,
//                     fontSize: 12.0.sp,
//                     color: AppColors.colorBlack,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//               ],
//             )