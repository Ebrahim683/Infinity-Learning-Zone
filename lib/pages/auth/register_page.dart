import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:infinity_learning_zone/constant/app_constant.dart';
import 'package:infinity_learning_zone/controllers/authcontroller/auth_controller.dart';
import 'package:infinity_learning_zone/pages/auth/login_page.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool securePass = true;
  bool securePassC = true;

  userRegister(String userName, String email, String password) {
    AuthController.userRegister(userName, email, password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => LoadingOverlay(
            isLoading: AuthController.isLoading.value,
            child: SingleChildScrollView(
              child: Container(
                height: Get.height,
                width: Get.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/hero.jpg'),
                        fit: BoxFit.cover)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
                  child: Column(
                    children: [
                      //animation
                      SizedBox(
                        height: 250.h,
                        width: double.infinity,
                        child: Lottie.asset('assets/registerAnimation.json'),
                      ),
                      SizedBox(height: 5.h),
                      //user name input
                      GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          blur: 0,
                          border: 1,
                          height: 50.h,
                          child: TextField(
                            controller: _userNameController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.person_outline),
                                hintText: 'User Name',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                      SizedBox(height: 5.h),
                      //email input
                      GlassContainer(
                          width: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          blur: 0,
                          border: 1,
                          height: 50.h,
                          child: TextField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.email_outlined),
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                      SizedBox(height: 5.h),
                      //password input
                      GlassContainer(
                          width: double.infinity,
                          height: 50.h,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          blur: 0,
                          border: 1,
                          child: TextField(
                            controller: _passwordController,
                            obscureText: securePass,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.key_outlined),
                                suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      securePass = !securePass;
                                      log(securePass.toString());
                                    });
                                  },
                                  icon: Icon(securePass == true
                                      ? Icons.remove_red_eye_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                                hintText: 'Password',
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                      SizedBox(height: 5.h),
                      //confirm password input
                      GlassContainer(
                          width: double.infinity,
                          height: 50.h,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          blur: 0,
                          border: 1,
                          child: TextField(
                            controller: _confirmPasswordController,
                            obscureText: securePassC,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.key_outlined),
                                suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      securePassC = !securePassC;
                                    });
                                  },
                                  icon: Icon(securePassC == true
                                      ? Icons.remove_red_eye_outlined
                                      : Icons.visibility_off_outlined),
                                ),
                                hintText: 'Confirm password',
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none)),
                          )),
                      SizedBox(height: 20.h),
                      //register button
                      GlassContainer(
                        height: 50.h,
                        width: 200.w,
                        blur: 10,
                        border: 1,
                        child: MaterialButton(
                          onPressed: () {
                            String userName = _userNameController.text.trim();
                            String email = _emailController.text.trim();
                            String password = _passwordController.text.trim();
                            String confirmPassword =
                                _confirmPasswordController.text.trim();

                            if (userName == '') {
                              AppConstant.SnackBar('Error!', 'Enter user name');
                            } else if (email == '') {
                              AppConstant.SnackBar(
                                  'Error!', 'Enter valid email address');
                            } else if (password == '') {
                              AppConstant.SnackBar('Error!', 'Enter password');
                            } else if (password.length < 6) {
                              AppConstant.SnackBar('Error!',
                                  'Your password should be 6 character');
                            } else if (confirmPassword == '') {
                              AppConstant.SnackBar(
                                  'Error!', 'Enter password again');
                            } else if (confirmPassword.length < 6 ||
                                password != confirmPassword) {
                              AppConstant.SnackBar(
                                  'Error!', 'Password did not match');
                            } else {
                              userRegister(userName, email, password);
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Lottie.asset(Icons8.icons8_box,
                                  height: 25.h, width: 25.w),
                              SizedBox(width: 5.w),
                              const Text(
                                'Register account',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              log('taped');
                            },
                            child: GlassContainer(
                              blur: 0,
                              border: 1,
                              radius: 50.r,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  'images/google.png',
                                  height: 25.h,
                                  width: 25.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {},
                            child: GlassContainer(
                              blur: 0,
                              border: 1,
                              radius: 50.r,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  'images/facebook.png',
                                  height: 25.h,
                                  width: 25.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 8.w),
                          GestureDetector(
                            onTap: () {},
                            child: GlassContainer(
                              blur: 0,
                              border: 1,
                              radius: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(
                                  'images/twitter.png',
                                  height: 25.h,
                                  width: 25.h,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an account?'),
                          TextButton(
                              onPressed: () {
                                Get.off(() => const LoginPage(),
                                    transition: Transition.fadeIn);
                              },
                              child: const Text(
                                'Login here',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Colors.white),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
