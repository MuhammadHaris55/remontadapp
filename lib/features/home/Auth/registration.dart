import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/global_variables.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  //TextEditingController emailController,
  /// TextEditingController passwordController,
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  String selectedItem = 'Item 1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(right: 30.0.w, left: 30.0.w),
        child: ListView(
          /// mainAxisAlignment: MainAxisAlignment.center,
          children: [
             SizedBox(height: 30.0.h),
            //const Spacer(),
            Container(
              //   color: Colors.red,
              child: Image.asset(
                AssetImages.appLogo,
                //     width: 600,
              ),
            ),
            //const SizedBox(height: 10.0),
            //const Spacer(),
             Center(
              child: Text(
                'Create New Account',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 35.0.sp,
                  color: AppColors.colorBlack,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),

             SizedBox(height: 10.0.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'FirstName',
                prefixIcon:  Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: const BorderSide(
                    //   color: Colors.pink,
                    width: 3,
                    // style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(10.h),
                fillColor: Colors.white,
              ),
            ),
            // CustomTextFormField(
            //   //  textEditingController: emailController,
            //   hintText: 'Email',
            //  icon: const Icon(Icons.mail),
            // ),
            SizedBox(height: 15.0.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'LastName',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: const BorderSide(
                    //color: Colors.pink,
                    width: 3,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16.h),
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 15.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Email Address',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20).r,
                  borderSide: const BorderSide(
                    //color: Colors.pink,
                    width: 3,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16.h),
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 15.0.h),
            TextField(
              textAlign: TextAlign.left,
              // controller: someTextXontroller,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: const BorderSide(
                    //color: Colors.pink,
                    width: 3,
                    style: BorderStyle.none,
                  ),
                ),
                filled: true,
                contentPadding: EdgeInsets.all(16.h),
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 15.0.h),
            CustomDropDownButton(
              school: 'DOB',
            ),

            //  DropdownButtonFormField(items: items, onChanged: onChanged),
            // CustomTextFormField(
            //   // textEditingController: passwordController,
            //   hintText: 'Password',
            //   icon: const Icon(Icons.lock),
            //   obscure: true,
            // ),
            // const SizedBox(height: 20.0),
            SizedBox(
              width: 342.0.w,
              height: 50.0.h,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.white),
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0.r),
                    ),
                    primary: AppColors.colorPrimary),
                child: const Text('Login'),
              ),
            ),

            const Spacer(),
             SizedBox(height: 10.0.h),
            // SizedBox(
            //   width: 200.0,
            //   height: 50.0,
            //   child: ElevatedButton(
            //     onPressed: () {
            //       // if (signInFormKey.currentState!.validate()) {
            //       //   print('Sign In func in IF');
            //       //   isLoading = true;
            //       //   authService.userLogin(
            //       //     context: context,
            //       //     email: emailController.text.trim(),
            //       //     password: passwordController.text.trim(),
            //       //   );
            //       // }
            //     },
            //     style: ElevatedButton.styleFrom(
            //       shape: const CircleBorder(),
            //       //padding: const EdgeInsets.all(2),
            //     ),
            //     child: null,
            //     // child: Icon(
            //     //   Icons.arrow_forward_sharp,
            //     //   color: Colors.white,
            //     //   size: 25.0.h,
            //     // ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
//  class _DropdownItemState extends State<DropdownItem> {
//   String? selectedValue = null;
//   final _dropdownFormKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//         key: _dropdownFormKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             DropdownButtonFormField(
//                 decoration: InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   border: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.blue, width: 2),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   filled: true,
//                   fillColor: Colors.blueAccent,
//                 ),
//                 validator: (value) => value == null ? "Select a country" : null,
//                 dropdownColor: Colors.blueAccent,
//                 value: selectedValue,
//                 onChanged: (String? newValue) {
//                   setState(() {
//                     selectedValue = newValue!;
//                   });
//                 },
//                 items: dropdownItems),
//             ElevatedButton(
//                 onPressed: () {
//                   if (_dropdownFormKey.currentState!.validate()) {
//                     //valid flow
//                   }
//                 },
//                 child: Text("Submit"))
//           ],
//         ));
//   }
// }// ignore_for_file: must_be_immutable

class CustomDropDownButton extends StatefulWidget {
  String school;
  CustomDropDownButton({
    Key? key,
    required this.school,
  }) : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      alignment: AlignmentDirectional.topEnd,
      value: widget.school,
      borderRadius: BorderRadius.all(Radius.circular(6.0.r)),
      dropdownColor: const Color.fromRGBO(243, 243, 243, 1),
      icon: const Icon(Icons.keyboard_arrow_down_sharp),
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 17.0.h),
        fillColor: const Color.fromRGBO(243, 243, 243, 1),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(6.0.r),
          ),
        ),
        // disabledBorder: InputBorder.none,
        // enabledBorder: InputBorder.none,
        // border: InputBorder.none,
      ),
      style: const TextStyle(
          // fontFamily: appFontFamily,
          // color: AppColors.colorHintText,
          ),
      focusColor: const Color.fromRGBO(243, 243, 243, 1),
      isExpanded: true,
      onChanged: (String? value) {
        setState(() {
          widget.school = value!;
        });
      },
      // validator: (value) =>
      //     value == null || value == '' ? 'field required' : null,
      items:
          // [
          // DropdownMenuItem(
          //   value: '',
          //   child: Text(
          //     "Your school",
          //     style: TextStyle(
          //       color: AppColors.colorGrey,
          //     ),
          //   ),
          // ),
          // DropdownMenuItem(
          //   value: "client",
          //   child: Text("Client"),
          // ),
          // DropdownMenuItem(
          //   value: "Freelancer",
          //   child: Text("Freelancer"),
          // ),
          // ],
          dropDownOptions.map<DropdownMenuItem<String>>((e) {
        return DropdownMenuItem<String>(
          value: e,
          child: Text(
            e,
          ),
        );
      }).toList(),
      // dropDownOptions.map<DropdownMenuItem<String>>((String value) {
      //   return DropdownMenuItem<String>(
      //     value: value,
      //     child: Text(
      //       '${value[0].toUpperCase()}${value.substring(1).toLowerCase()}',
      //     ),
      //   );
      // }).toList(),
      // ),
    );
  }
}

const List dropDownOptions = [
  'DOB',
  '',
  '',
];
