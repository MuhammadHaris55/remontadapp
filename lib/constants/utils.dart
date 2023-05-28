import 'package:flutter/material.dart';

import 'global_variables.dart';

void showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

void underProcessSnackBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text("Functionality under process"),
    ),
  );
}

// showAlertDialog(BuildContext context, String msg) {
//   // set up the button

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Center(
//       child: Text(
//         msg,
//         style: const TextStyle(
//             color: AppColors.colorBlack,
//             fontSize: 16,
//             fontWeight: FontWeight.w400),
//       ),
//     ),
//     content: ElevatedButton.icon(
//       style: ButtonStyle(
//         backgroundColor:
//             MaterialStateProperty.all<Color>(AppColors.colorComplimentary),
//       ),
//       onPressed: () {
//         Navigator.of(context).pop();
//         //mujy yaha icons use karny hai  but yaha anhi rahy icons
//       },
//       icon: const Icon(
//         // <-- Icon
//         color: AppColors.colorBlack,
//         Icons.check,
//         size: 24.0,
//       ),
//       label: const Text(
//         'ok',
//         style: TextStyle(
//             color: AppColors.colorBlack,
//             fontSize: 16,
//             fontWeight: FontWeight.bold),
//       ), // <-- Text
//     ),
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
