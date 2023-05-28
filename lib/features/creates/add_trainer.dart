import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/custom_dropdown.dart';
import 'package:remontada/common_widgets/custom_row.dart';
import 'package:remontada/common_widgets/custom_text_form.dart';
import 'package:remontada/constants/global_variables.dart';
import 'package:remontada/features/creates/add_venue.dart';
import 'package:remontada/features/creates/play_tournament.dart';

class AddTrainer extends StatelessWidget {
  const AddTrainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                Text(
                  "Add Trainer",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 28.0.sp,
                    color: AppColors.colorBlack,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRectangularTextFormField(hintText: 'Name'),
                    SizedBox(
                      height: 24.h,
                    ),
                    CustomRow(
                      text: 'Add Cover Photo',
                      icon: const Icon(
                        Icons.add_circle,
                        color: AppColors.colorPrimary,
                      ),
                      color: AppColors.colorPrimary,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    customDropDownButton(
                      school: 'Date Of Birth',
                      dropdownOptions: const [
                        'Date Of Birth',
                        'Game1',
                        'Game2',
                        'Game2',
                        'Game2',
                        'Game2',
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Text(
                      "Gender",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15.0.sp,
                        color: AppColors.colorBlack,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: true,
                          activeColor: AppColors.colorPrimary,
                          // focusColor: AppColors.colorPrimary,
                          // hoverColor: AppColors.colorPrimary,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: Text(
                            'Man',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        Radio(
                          value: true,
                          groupValue: true,
                          activeColor: AppColors.colorPrimary,
                          // focusColor: AppColors.colorPrimary,
                          // hoverColor: AppColors.colorPrimary,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: Text(
                            'Women',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // CustomRadio(),
                    SizedBox(
                      height: 24.h,
                    ),
                    customDropDownButton(
                      school: 'Select Sports',
                      dropdownOptions: const [
                        'Select Sports',
                        'activity1',
                        'activity2',
                        'activity2',
                        'activity2',
                        'activity2',
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    customDropDownButton(
                      school: 'Licensed?',
                      dropdownOptions: const [
                        'Licensed?',
                        'activity1',
                        'activity2',
                        'activity2',
                        'activity2',
                        'activity2',
                      ],
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: true,
                          activeColor: AppColors.colorPrimary,
                          // focusColor: AppColors.colorPrimary,
                          // hoverColor: AppColors.colorPrimary,
                          onChanged: (value) {},
                        ),
                        Expanded(
                          child: Text(
                            'Please check if you want to post this tournament for public.',
                            overflow: TextOverflow.clip,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0.sp,
                              color: AppColors.colorBlack,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                    //Spacer(),
                    Center(
                      child: SizedBox(
                        width: 342.0.w,
                        height: 50.0.h,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const AddVenue()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.white),
                              elevation: 5.0.r,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0.r),
                              ),
                              primary: AppColors.colorPrimary),
                          child: const Text('Add'),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Gender {
  String name;
  IconData icon;
  bool isSelected;

  Gender(this.name, this.icon, this.isSelected);
}

class CustomRadio extends StatelessWidget {
  Gender _gender;

  CustomRadio(this._gender);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: _gender.isSelected ? Color(0xFF3B4257) : Colors.white,
        child: Container(
          height: 80,
          width: 80,
          alignment: Alignment.center,
          margin: new EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                _gender.icon,
                color: _gender.isSelected ? Colors.white : Colors.grey,
                size: 40,
              ),
              SizedBox(height: 10),
              Text(
                _gender.name,
                style: TextStyle(
                    color: _gender.isSelected ? Colors.white : Colors.grey),
              )
            ],
          ),
        ));
  }
}
