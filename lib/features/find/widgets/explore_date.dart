import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/dummy_data.dart';
import '../../../constants/global_variables.dart';

class ExploreDate extends StatelessWidget {
  const ExploreDate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Let\'s explore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20.0.h),
        SizedBox(
          // width: MediaQuery.of(context).size.width / 1.93.w,
          height: 75.h,
          child: ListView.builder(
            // controller: _scrollController,
            scrollDirection: Axis.horizontal,
            itemCount: DummyData.exploreDataList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Container(
                width: 47.0.w,
                height: 70.0.h,
                padding:
                    EdgeInsets.symmetric(horizontal: 13.0.w, vertical: 10.0.h),
                decoration: BoxDecoration(
                  color: index == 4 ? AppColors.colorPrimary : Colors.white,
                  borderRadius: BorderRadius.circular(10.0.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DummyData.exploreDataList[index]['date'],
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: Colors.black,
                        fontWeight:
                            index == 4 ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      DummyData.exploreDataList[index]['day'],
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.black,
                        fontWeight:
                            index == 4 ? FontWeight.bold : FontWeight.normal,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
