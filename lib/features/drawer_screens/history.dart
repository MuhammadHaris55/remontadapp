import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:remontada/common_widgets/app_bar.dart';
import 'package:remontada/common_widgets/event_tile.dart';

class History extends StatelessWidget {
  History({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _openDrawer() {
    _scaffoldKey.currentState?.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(openDrawer: _openDrawer),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 15.0.h),
        child: Column(children: [
          Card(
            child: EventTile(
              imagePath: 'assets/images/player1.png',
            ),
          ),
          SizedBox(height: 10.0.h),
          Card(
            child: EventTile(
              imagePath: 'assets/images/player1.png',
            ),
          ),
          SizedBox(height: 10.0.h),
          Card(
            child: EventTile(
              imagePath: 'assets/images/event.png',
            ),
          ),
          SizedBox(height: 10.0.h),
        ]),
      ),
    );
  }
}
