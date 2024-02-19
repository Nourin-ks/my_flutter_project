import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionBadgeWidget.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';
import 'package:motion_tab_bar/MotionTabBarController.dart';
import 'package:my_flutter_project/grp_assgnmnt/emergency_assistance/page2.dart';
import 'package:my_flutter_project/grp_assgnmnt/emergency_assistance/page3.dart';

class Bottom extends StatefulWidget {
  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> with TickerProviderStateMixin {
  MotionTabBarController? controller;

  @override
  void initState() {
    controller =
        MotionTabBarController(
            length: 5,
            vsync: this, initialIndex: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
          controller:controller ,
          children: [
            Center(child: Text('hii')),
            Center(child: Text('home'),),
            EmergencyHome(),
            Center(child: Text('settings'),),
            Emergency_page3(),


          ]),
      bottomNavigationBar: MotionTabBar(
        controller:
        controller, // ADD THIS if you need to change your tab programmatically
        initialSelectedTab: "star",
        labels: const ["Dashboard", "Home", "star", "Settings", 'contacts'],
        icons: const [
          Icons.dashboard,
          Icons.home,
          Icons.settings_applications_rounded,
          Icons.settings,
          Icons.contact_emergency
        ],


        tabSize: 50,
        tabBarHeight: 55,
        textStyle: const TextStyle(
          fontSize: 12,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        tabIconColor: Colors.grey,
        tabIconSize: 28.0,
        tabIconSelectedSize: 26.0,
        tabSelectedColor: Colors.red,
        tabIconSelectedColor: Colors.white,
        tabBarColor: Colors.white,
        onTabItemSelected: (int value) {
          setState(() {
            // _tabController!.index = value;
            controller!.index = value;
          });
        },
      ),
    );
  }
}