import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:infinity_learning_zone/util/image_string.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';
import 'package:infinity_learning_zone/widget/button_widget.dart';
import 'package:infinity_learning_zone/widget/text_widget.dart';
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

  /* Widget textInput({
    TextEditingController? controller,
    IconData? prefix,
    String? hint,
  }) {
    return GlassContainer(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        blur: 0,
        border: 1,
        height: 50.h,
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              prefixIcon: Icon(prefix),
              hintText: hint,
              border: const OutlineInputBorder(borderSide: BorderSide.none)),
        ));
  } */

  updateProfile({
    String? profilePic,
    String? name,
    String? myClass,
    String? industry,
    String? phone,
  }) {}

  @override
  void initState() {
    super.initState();
    log('update profile');
  }

  @override
  Widget build(BuildContext context) {
    return BgPage.bgPage(
      height: 68.h,
      body: LoadingOverlay(
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
                          child: Image.asset(avatarImage,
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
              TextWidget.textInput(
                  controller: _nameController,
                  prefix: PhosphorIcons.pen_light,
                  hint: 'Name'),
              SizedBox(height: 15.h),
              TextWidget.textInput(
                  controller: _classController,
                  prefix: Icons.school,
                  hint: 'Class'),
              SizedBox(height: 15.h),
              TextWidget.textInput(
                  controller: _industryController,
                  prefix: Icons.home,
                  hint: 'Industry'),
              SizedBox(height: 15.h),
              TextWidget.textInput(
                  controller: _phoneController,
                  prefix: PhosphorIcons.phone,
                  hint: 'Phone'),
              SizedBox(height: 20.h),
              ButtonWidget.roundGlassButton(
                icon: 'assets/updateProfile.json',
                title: 'Update',
                onClick: () {
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
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text('Update Profile'),
        leading: InkWell(
            onTap: () => Get.back(),
            child: const Icon(PhosphorIcons.arrow_left_light)),
      ),
    );
  }
}
