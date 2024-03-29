import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:infinity_learning_zone/data/model/user/users_model.dart';
import 'package:infinity_learning_zone/pages/auth/login_page.dart';
import 'package:infinity_learning_zone/pages/home/home_page.dart';
import 'package:infinity_learning_zone/pages/pdf/pdf_page.dart';
import 'package:infinity_learning_zone/pages/profile/profile_page.dart';
import 'package:infinity_learning_zone/pages/setting/setting_page.dart';
import 'package:infinity_learning_zone/storage/get_storage_manager.dart';
import 'package:infinity_learning_zone/util/connectivity_check.dart';
import 'package:infinity_learning_zone/util/image_string.dart';
import 'package:infinity_learning_zone/util/strings.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';
import 'package:infinity_learning_zone/widget/drawer_header_widget.dart';
import 'package:lottie/lottie.dart';

import '../quiz/mcq_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({super.key});

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  var currentIndex = 0;
  final _pages = [
    const HomePage(),
    const PdfPage(),
    const ProfilePage(),
    const SettingPage(),
    const MCQPage(),
  ];
  final controller = Get.find<ConnectivityCheck>();

  @override
  void initState() {
    super.initState();
    log('loggedIn: ${GetStorageManager.isLoggedIn()}');
    log('Token: ${GetStorageManager.getToken()}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0x44000000),
        elevation: 0,
        title: Text(appTitle),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: GestureDetector(
              onTap: () {
                GetStorageManager.logOut();
                Get.offAll(() => const LoginPage());
              },
              child: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Obx(() {
        return controller.connectionStatus.value == 0
            ? Center(child: Lottie.asset('assets/notFoundAnimation.json'))
            : _pages[currentIndex];
      }),
      drawer: navDrawer(),
      // bottomNavigationBar: bottomNav(),
    );
  }

  Widget navDrawer() {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
      child: Drawer(
        child: BgPage.bgPage(
          height: 0.h,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: Get.height / 3,
                  child: DrawerHeader(
                    child: Container(),
                  ),
                ),
                //widget item
                Column(
                  children: [
                    navList('Home', Icons.home, 0),
                    navList('Download Pdf', Icons.picture_as_pdf, 1),
                    navList('Profile', Icons.person, 2),
                    navList('Setting', Icons.settings, 3),
                    navList('MCQ', PhosphorIcons.exam, 4),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//navigation drawer item
  Widget navList(String title, IconData leading, int index) {
    return GlassContainer(
      border: 1,
      borderRadius: BorderRadius.circular(5.r),
      blur: 0,
      margin: EdgeInsets.only(bottom: 5.h),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.black38,
          child: Icon(
            leading,
            color: Colors.white,
          ),
        ),
        onTap: (() {
          setState(() {
            currentIndex = index;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }

  // Widget bottomNav() {
  //   return CurvedNavigationBar(
  //     index: currentIndex,
  //     items: const [
  //       Icon(
  //         Icons.home,
  //         size: 30,
  //       ),
  //       Icon(
  //         Icons.settings,
  //         size: 30,
  //       ),
  //       Icon(
  //         Icons.people,
  //         size: 30,
  //       ),
  //       Icon(
  //         Icons.edit,
  //         size: 30,
  //       ),
  //     ],
  //     animationDuration: const Duration(milliseconds: 500),
  //     onTap: (index) {
  //       setState(() {
  //         currentIndex = index;
  //         log(currentIndex.toString());
  //       });
  //     },
  //     color: Colors.white54,
  //     buttonBackgroundColor: Colors.greenAccent,
  //     backgroundColor: Colors.blueAccent,
  //     animationCurve: Curves.decelerate,
  //     height: 60.0,
  //   );
  // }
}
