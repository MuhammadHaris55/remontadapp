// // import 'package:flutter/material.dart';
// // import 'package:cached_network_image/cached_network_image.dart';
// // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// // import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// // import '../../constants/global_variables.dart';

// // class HomeScreen extends StatefulWidget {
// //   const HomeScreen({super.key});

// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   String image = 'https://profiles.ucr.edu/app/images/default-profile.jpg';
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //         backgroundColor: Colors.white,
// //         appBar: AppBar(
// //           title: Row(
// //             children: [
// //               CircleAvatar(
// //                 minRadius: 24,
// //                 backgroundColor: const Color.fromRGBO(142, 142, 142, 0.5),
// //                 backgroundImage: CachedNetworkImageProvider(
// //                   image,
// //                 ),
// //                 // AssetImage(
// //                 //   image,
// //                 // ),
// //                 // radius: 30,
// //               ),
// //             ],
// //           ),
// //           actions: <Widget>[
// //             IconButton(
// //               icon: const Icon(
// //                 Icons.notifications_active_outlined,
// //                 color: Colors.black,
// //               ),
// //               onPressed: () {},
// //               // onPressed: () =>
// //               //     Navigator.pushNamed(context, EditProfile.routeName),
// //             ),
// //             IconButton(
// //               icon: const Icon(
// //                 Icons.menu,
// //                 color: Colors.black,
// //               ),
// //               onPressed: () {},
// //               // onPressed: () =>
// //               //     Navigator.pushNamed(context, EditProfile.routeName),
// //             )
// //           ],
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.fromLTRB(35, 21, 35, 21),
// //           child: SingleChildScrollView(
// //             child: Column(
// //               //mainAxisAlignment: MainAxisAlignment.start,
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 Text(
// //                   'Hello, Welcome',
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.w700,
// //                     fontSize: 20.0.sp,
// //                     color: AppColors.colorBlack,
// //                     fontStyle: FontStyle.normal,
// //                   ),
// //                 ),
// //                 Text(
// //                   'Diana',
// //                   style: TextStyle(
// //                     fontWeight: FontWeight.w300,
// //                     fontSize: 21.0.sp,
// //                     color: AppColors.colorBlack,
// //                     fontStyle: FontStyle.normal,
// //                   ),
// //                 ),
// //                 const Divider(
// //                   color: AppColors.colorPrimary,
// //                   thickness: 2,
// //                   // indent: 262,
// //                   endIndent: 86,
// //                 ),
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     StaggeredGridView.count(
// //                       // maxCrossAxisExtent: 250,
// //                       //   childAspectRatio: 1.1,
// //                       crossAxisSpacing: 14,
// //                       mainAxisSpacing: 20,
// //                       crossAxisCount: 2,
// //                       //   itemCount: 4,
// //                       shrinkWrap: true,
// //                       scrollDirection: Axis.vertical,
// //                       physics: const NeverScrollableScrollPhysics(),
// //                       children: List.generate(5, (index) {
// //                         return ContainerThatRepresent();
// //                       }),
// //                       staggeredTiles: buildTiles(),
// //                     ),

// //                     // SizedBox()

// //                     // Container(
// //                     //   //    width: 800,
// //                     //   child: StaggeredGridView.count(
// //                     //     crossAxisCount: 2,
// //                     //     mainAxisSpacing: 5,
// //                     //     crossAxisSpacing: 5,
// //                     //     children: List.generate(14, (index) {
// //                     //       return Container(
// //                     //         child: Center(
// //                     //           child: Text("${index + 1}"),
// //                     //         ),
// //                     //         color: Colors.blue,
// //                     //       );
// //                     //     }),
// //                     //     staggeredT
// //                     //iles: buildTiles(),
// //                     //   ),
// //                     // ),
// //                   ],
// //                 ),
// //                 S(
// //                   child: ListView.builder(
// //                     scrollDirection: Axis.horizontal,
// //                     itemCount: 15,
// //                     itemBuilder: (context, index) {
// //                       return CircleAvatar(
// //                         child: Image.asset('assets/images/horse.png'),
// //                       );
// //                     },
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ));
// //   }

// //   List<StaggeredTile> buildTiles() {
// //     return List.generate(5, (index) {
// //       if ((index + 1) % 5 == 0) {
// //         return StaggeredTile.count(2, 1);
// //       } else {
// //         return StaggeredTile.count(1, 1);
// //       }
// //     });
// //   }
// // }

// // class ContainerThatRepresent extends StatefulWidget {
// //   const ContainerThatRepresent({super.key});

// //   @override
// //   State<ContainerThatRepresent> createState() => _ContainerThatRepresentState();
// // }

// // class _ContainerThatRepresentState extends State<ContainerThatRepresent> {
// //   String image = 'https://profiles.ucr.edu/app/images/default-profile.jpg';

// //   bool check = false;
// //   @override
// //   Widget build(BuildContext context) {
// //     return check == false
// //         ? InkWell(
// //             onTap: () {
// //               setState(() {
// //                 // check = check == false ? true : false;
// //               });
// //             },
// //             child: Container(
// //               // width: 174,
// //               // height: 148,
// //               alignment: Alignment.center,
// //               decoration: BoxDecoration(
// //                 color: AppColors.backgroundColor,
// //                 borderRadius: BorderRadius.circular(10.r),
// //                 border: Border.all(
// //                   color: AppColors.colorGrey,
// //                   width: 1.0,
// //                 ),
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: [
// //                   SizedBox(
// //                     width: 174,
// //                     height: 114,
// //                     child: Image.network(
// //                       image,
// //                       fit: BoxFit.cover,
// //                     ),
// //                   ),
// //                   // Text('helo'),
// //                   // LinkText(
// //                   //   text: "21 oct 2022",
// //                   // ),
// //                   // const SizedBox(height: 8),
// //                   // LinkText(
// //                   //   text: "2 Available",
// //                   // ),
// //                   const SizedBox(child: Text('raheel')),
// //                 ],
// //               ),
// //             ),
// //           )
// //         : InkWell(
// //             onTap: () {
// //               setState(() {
// //                 //  check = check == false ? true : false;
// //               });
// //             },
// //             child: Container(
// //               // width: 137,
// //               // height: 56,
// //               alignment: Alignment.center,
// //               decoration: BoxDecoration(
// //                 color: Color.fromARGB(255, 2, 202, 221),
// //                 // wait
// //                 borderRadius: BorderRadius.circular(10.r),
// //                 border: Border.all(
// //                   color: AppColors.colorGrey,
// //                   width: 1.0,
// //                 ),
// //               ),
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 crossAxisAlignment: CrossAxisAlignment.center,
// //                 children: const [
// //                   Text('helo'),
// //                   // LinkText(
// //                   //   text: "21 oct 2022",
// //                   // ),
// //                   const SizedBox(height: 8),
// //                   Text('helo'),
// //                   // LinkText(
// //                   //   text: "2 Available",
// //                   // ),
// //                 ],
// //               ),
// //             ),
// //           );
// //   }
// // }
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:remontada/constants/global_variables.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
// import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   String image = 'https://profiles.ucr.edu/app/images/default-profile.jpg';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Row(
//           children: [
//             CircleAvatar(
//               minRadius: 24,
//               backgroundColor: const Color.fromRGBO(142, 142, 142, 0.5),
//               backgroundImage: CachedNetworkImageProvider(
//                 image,
//               ),
//               // AssetImage(
//               //   image,
//               // ),
//               // radius: 30,
//             ),
//           ],
//         ),
//         actions: <Widget>[
//           IconButton(
//             icon: const Icon(
//               Icons.notifications_active_outlined,
//               color: Colors.black,
//             ),
//             onPressed: () {},
//             // onPressed: () =>
//             //     Navigator.pushNamed(context, EditProfile.routeName),
//           ),
//           IconButton(
//             icon: const Icon(
//               Icons.menu,
//               color: Colors.black,
//             ),
//             onPressed: () {},
//             // onPressed: () =>
//             //     Navigator.pushNamed(context, EditProfile.routeName),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.fromLTRB(35, 21, 35, 21),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Hello, Welcome',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w700,
//                   fontSize: 20.0.sp,
//                   color: AppColors.colorBlack,
//                   fontStyle: FontStyle.normal,
//                 ),
//               ),
//               Text(
//                 'Diana',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w300,
//                   fontSize: 21.0.sp,
//                   color: AppColors.colorBlack,
//                   fontStyle: FontStyle.normal,
//                 ),
//               ),
//               const Divider(
//                 color: AppColors.colorPrimary,
//                 thickness: 2,
//                 // indent: 262,
//                 endIndent: 86,
//               ),
//               StaggeredGridView.count(
//                 // maxCrossAxisExtent: 250,
//                 //   childAspectRatio: 1.1,
//                 crossAxisSpacing: 14,
//                 mainAxisSpacing: 20,
//                 crossAxisCount: 2,
//                 //   itemCount: 4,
//                 shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: List.generate(5, (index) {
//                   return ContainerThatRepresent();
//                 }),
//                 staggeredTiles: buildTiles(),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Shop'),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 8.0, right: 8.0),
//                     child: Container(
//                       height: 2,
//                       width: MediaQuery.of(context).size.width / 2,
//                       color: AppColors.colorPrimary,
//                     ),
//                   ),
//                   Icon(Icons.shop)
//                 ],
//               ),
//               Container(
//                 width: MediaQuery.of(context).size.width,
//                 height: 100,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 15,
//                   itemBuilder: (context, index) {
//                     return const Padding(
//                       padding: EdgeInsets.all(12.0),
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage('assets/images/Image2.png'),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('nearby Challesges'),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                     child: Container(
//                       height: 2,
//                       width: MediaQuery.of(context).size.width / 3,
//                       color: AppColors.colorPrimary,
//                     ),
//                   ),
//                   Icon(Icons.shop)
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   List<StaggeredTile> buildTiles() {
//     return List.generate(5, (index) {
//       if ((index + 1) % 5 == 0) {
//         return StaggeredTile.count(2, 1);
//       } else {
//         return StaggeredTile.count(1, 1);
//       }
//     });
//   }
// }

// class ContainerThatRepresent extends StatefulWidget {
//   const ContainerThatRepresent({super.key});

//   @override
//   State<ContainerThatRepresent> createState() => _ContainerThatRepresentState();
// }

// class _ContainerThatRepresentState extends State<ContainerThatRepresent> {
//   String image = 'https://profiles.ucr.edu/app/images/default-profile.jpg';

//   bool check = false;
//   @override
//   Widget build(BuildContext context) {
//     return check == false
//         ? InkWell(
//             onTap: () {
//               setState(() {
//                 // check = check == false ? true : false;
//               });
//             },
//             child: Container(
//               // width: 174,
//               // height: 148,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: AppColors.backgroundColor,
//                 borderRadius: BorderRadius.circular(10.r),
//                 border: Border.all(
//                   color: AppColors.colorGrey,
//                   width: 1.0,
//                 ),
//               ),
//               child: Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   ClipRRect(
//                     borderRadius: BorderRadius.circular(10.r),
//                     child: SizedBox(
//                       width: 174,
//                       height: 130,
//                       child: Image.network(
//                         image,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   // Text('helo'),
//                   // LinkText(
//                   //   text: "21 oct 2022",
//                   // ),
//                   // const SizedBox(height: 8),
//                   // LinkText(
//                   //   text: "2 Available",
//                   // ),
//                   const SizedBox(child: Text('raheel')),
//                 ],
//               ),
//             ),
//           )
//         : InkWell(
//             onTap: () {
//               setState(() {
//                 //  check = check == false ? true : false;
//               });
//             },
//             child: Container(
//               // width: 137,
//               // height: 56,
//               alignment: Alignment.center,
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 2, 202, 221),
//                 // wait
//                 borderRadius: BorderRadius.circular(10.r),
//                 border: Border.all(
//                   color: AppColors.colorGrey,
//                   width: 1.0,
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: const [
//                   Text('helo'),
//                   // LinkText(
//                   //   text: "21 oct 2022",
//                   // ),
//                   const SizedBox(height: 8),
//                   Text('helo'),
//                   // LinkText(
//                   //   text: "2 Available",
//                   // ),
//                 ],
//               ),
//             ),
//           );
//   }
// }
