import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _nameController = TextEditingController();
  final _classController = TextEditingController();
  final _industryController = TextEditingController();
  final _phoneController = TextEditingController();

  Widget textInput({
    TextEditingController? textEditingController,
    IconData? icon,
    String? hint,
  }) {
    return GlassContainer(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        blur: 0,
        border: 1,
        height: 50.h,
        child: TextField(
          controller: textEditingController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(icon),
              hintText: hint,
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
        ));
  }

  updateProfile({
    String? profilePic,
    String? name,
    String? myClass,
    String? industry,
    String? phone,
  }) {}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    log('update profile');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text('Update Profile'),
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(PhosphorIcons.arrow_left_light)),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hero.jpg'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
          child: LoadingOverlay(
            isLoading: false,
            progressIndicator: Lottie.asset('assets/infinityCircle.json',
                height: Get.height * 0.40, width: Get.width * 0.40),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        log('image');
                      },
                      child: Stack(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black.withOpacity(0.3),
                            radius: 60.r,
                            child: Hero(
                              tag: 'img',
                              transitionOnUserGestures: true,
                              child: Image.asset('images/avatar.jpg',
                                  height: 80.h, width: 80.w),
                            ),
                          ),
                          const Positioned(
                            right: 5,
                            bottom: 5,
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  textInput(
                      textEditingController: _nameController,
                      icon: PhosphorIcons.pen_light,
                      hint: 'Name'),
                  textInput(
                      textEditingController: _classController,
                      icon: Icons.school,
                      hint: 'Class'),
                  textInput(
                      textEditingController: _industryController,
                      icon: Icons.home,
                      hint: 'Industry'),
                  textInput(
                      textEditingController: _phoneController,
                      icon: PhosphorIcons.phone,
                      hint: 'Phone'),
                  SizedBox(height: 20.h),
                  GlassContainer(
                    height: 50.h,
                    width: 200.w,
                    blur: 10,
                    border: 1,
                    child: MaterialButton(
                      onPressed: () {
                        String profilePic = _nameController.text.toString();
                        String name = _nameController.text.toString();
                        String myClass = _nameController.text.toString();
                        String industry = _nameController.text.toString();
                        String phone = _nameController.text.toString();
                        updateProfile(
                            profilePic: profilePic,
                            name: name,
                            myClass: myClass,
                            industry: industry,
                            phone: phone);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.upgrade,
                            size: 25,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.w),
                          const Text(
                            'Update',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
