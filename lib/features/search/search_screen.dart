import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/constants/global_variables.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.backgroundColor,
        title: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: CircleAvatar(
            //   minRadius: 24,
            //   backgroundColor: const Color.fromARGB(126, 6, 6, 6),
            child: Image.asset(
              'assets/images/profile1.png',
              fit: BoxFit.cover,
            ),
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
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.08.w,
                    height: 100,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Simages.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Image.asset(
                                  Simages[index]['image']!,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ListView.builder(
          //     itemCount: 4, // Set the number of items in the ListView
          //     itemBuilder: (context, index) {
          //return
          Column(
            children: [
              Container(
                width: 406.w,
                //   height: 458.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(10.r),
                  // border: Border.all(
                  //   color: AppColors.colorGrey,
                  //   width: 1.0.w,
                  // ),
                ),
                child: Card(
                  elevation: 4.r,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              //   minRadius: 24,
                              //   backgroundColor: const Color.fromARGB(126, 6, 6, 6),
                              child: Image.asset(
                                'assets/images/profile1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lynn J. jackson",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0.sp,
                                    color: AppColors.colorBlack,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                Text(
                                  "3 days ago",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10.0.sp,
                                    color: AppColors.colorGrey,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.group_add_outlined,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                              // onPressed: () =>
                              //     Navigator.pushNamed(context, EditProfile.routeName),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "I Loved the photo session that my friend did for me",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12.0.sp,
                              color: AppColors.colorGrey,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Center(
                          child: SizedBox(
                            width: 390.w,
                            //  height: 234.h,
                            child: Image.asset(
                              'assets/images/PlayerS.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "30 Comments . 5 Shared",
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
                          height: 10.h,
                        ),
                        Row(
                          //  crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ButtonIcon(
                              icon: Icon(
                                Icons.thumb_up,
                                color: AppColors.colorGrey,
                                size: 15.sp,
                              ),
                            ),
                            ButtonIcon(
                              icon: Icon(
                                Icons.chat_rounded,
                                color: AppColors.colorGrey,
                                size: 15.sp,
                              ),
                            ),
                            ButtonIcon(
                              icon: Icon(
                                Icons.share_outlined,
                                color: AppColors.colorGrey,
                                size: 15.sp,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'Mike Lyne and 50 others',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 12.0.sp,
                                  color: AppColors.colorGrey,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            // Image.asset(
                            //   'assets/images/like.png', // Replace with your image asset path
                            //   // width: 200,
                            //   // height: 200,
                            //   color: AppColors.colorPrimary,
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Divider(
                          thickness: 0.5.sp,
                          color: AppColors.colorGrey,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              //   minRadius: 24,
                              //   backgroundColor: const Color.fromARGB(126, 6, 6, 6),
                              child: Image.asset(
                                'assets/images/profile1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Lynn J. jackson",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.0.sp,
                                    color: AppColors.colorBlack,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "This photo is very cool.",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.0.sp,
                                    color: AppColors.colorGrey,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  "1 Like    Responder",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 10.0.sp,
                                    color: AppColors.colorBlack,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
          //;
          //})
        ],
      ),
    );
  }
}

class ButtonIcon extends StatelessWidget {
  Icon icon;

  ButtonIcon({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //width: 27.w,
      height: 27.h,
      child: ElevatedButton(
          onPressed: () {
            // Button ka functionality yahan likhein
          },
          style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(color: AppColors.colorGrey),
              backgroundColor: AppColors.backgroundColor,
              elevation: 5.0,
              shape: const CircleBorder(),
              primary: AppColors.colorPrimary),
          child: icon),
    );
  }
}
