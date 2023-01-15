import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/pages/profile/update_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget profileHeader(IconData icon, String value, double width) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: Get.height * 0.05,
      width: width,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 5.w),
            Flexible(
              child: Text(
                value,
                style: TextStyle(color: Colors.white, fontSize: 10.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileDetails(IconData icon, String value) {
    return Container(
      padding: EdgeInsets.only(left: 10.w, top: 5.h, bottom: 5.h, right: 10.w),
      margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 15.w),
      height: Get.height * 0.08,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black, width: 1.w)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.r)),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(
                  icon,
                  color: Colors.black,
                  size: 25,
                ),
              ),
            ),
          ),
          SizedBox(width: 15.w),
          Flexible(
            child: Text(
              value,
              style: TextStyle(
                  color: const Color.fromARGB(255, 14, 9, 85), fontSize: 15.sp),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    log('profile page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/hero.jpg'), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 68.h),
                  Stack(
                    children: [
                      ClipPath(
                        clipper: ProfileClipper(),
                        child: Container(
                          height: Get.height / 3.5,
                          width: Get.width,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              const Color.fromARGB(255, 2, 138, 6)
                                  .withOpacity(0.7),
                              const Color.fromARGB(255, 15, 114, 228)
                                  .withOpacity(0.7)
                            ]),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withOpacity(0.1),
                          radius: 50.r,
                          child: Hero(
                            transitionOnUserGestures: true,
                            tag: 'img',
                            child: Image.asset('images/avatar.jpg',
                                height: Get.height * 0.18,
                                width: Get.width * 0.18),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            profileHeader(Icons.person, 'Md. Ebrahim Rahman',
                                Get.width * 0.45),
                            SizedBox(height: 10.h),
                            profileHeader(Icons.email,
                                'ebrahimrahman68@gmail.com', Get.width * 0.60),
                            SizedBox(height: 10.h),
                            profileHeader(PhosphorIcons.gift, '587 points',
                                Get.width * 0.25),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  profileDetails(Icons.people_sharp, 'Student'),
                  profileDetails(Icons.school, 'Class 2'),
                  profileDetails(
                      Icons.home, 'Daffodil International University'),
                  profileDetails(PhosphorIcons.phone, '01234456789'),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orange,
        elevation: 10,
        onPressed: () {
          Get.to(() => UpdateProfile());
        },
        label: const Text('Update profile'),
        icon: const Icon(PhosphorIcons.pencil),
      ),
    );
  }
}

class ProfileClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    var y = size.height;
    var x = size.width;
    path.lineTo(0, 0);
    path.lineTo(0, y);
    path.lineTo(x, y * 0.6);
    path.lineTo(x, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
