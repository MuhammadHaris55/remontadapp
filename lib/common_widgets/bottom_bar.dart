import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:remontada/features/creates/main_create_screen.dart';
import 'package:remontada/features/home/Auth/contactus.dart';
import 'package:remontada/features/home/screens/home_screen.dart';
import 'package:remontada/features/search/search_screen.dart';
import 'package:remontada/features/wallet/wallet.dart';

import '../constants/global_variables.dart';

class BottomBar extends StatefulWidget {
  static const routeName = '/bottom-bar';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  List<Widget> pages = [
    // const Center(child: Text('Home Screen')),
    // const Center(child: Text('Add Balance Screen')),
    const HomeScreen(),
    const SearchScreen(),
    const MainCreateScreen(),

    const ContactUs(),
    const WalletScreen()
    // const Center(child: Text('Profile Screen')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        // showUnselectedLabels: false,
        selectedFontSize: 10.0.sp,
        elevation: 5,
        currentIndex: _page,
        backgroundColor: AppColors.backgroundColor,
        selectedItemColor: AppColors.colorPrimary,
        selectedLabelStyle: TextStyle(
          height: 1.h,
          fontWeight: FontWeight.w900,
        ),
        iconSize: 28,
        onTap: updatePage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            // SvgPicture.asset(
            //   AssetImages1.homeSvg,
            //   color: _page == 0 ? AppColors.colorPrimary : AppColors.colorGrey,
            // ),
            label: _page == 0 ? '°' : '',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            // SvgPicture.asset(
            //   AssetImages1.homeSvg,
            //   color: _page == 0 ? AppColors.colorPrimary : AppColors.colorGrey,
            // ),
            label: _page == 1 ? '°' : '',
            tooltip: 'Search',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 31.0.w,
              backgroundColor: AppColors.colorPrimary,
              child: const Icon(
                Icons.add_circle_outline,
                color: Colors.black,
              ),
            ),
            label: '',
            tooltip: 'Add Balance',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.home,
              color: Colors.black,
            ),
            // SvgPicture.asset(
            //   AssetImages1.homeSvg,
            //   color: _page == 0 ? AppColors.colorPrimary : AppColors.colorGrey,
            // ),
            label: _page == 2 ? '°' : '',
            tooltip: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.wallet_travel,
              color: Colors.black,
            ),
            //     SvgPicture.asset(
            //   AssetImages1.walletIcon,
            //   color: _page == 2
            //       ? AppColors.backgroundColor
            //       : AppColors.colorPrimary,
            // ),
            label: _page == 3 ? '°' : '',
            tooltip: 'Wallet',
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
