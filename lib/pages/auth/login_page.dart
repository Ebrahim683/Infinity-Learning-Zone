import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:infinity_learning_zone/pages/auth/register_page.dart';
import 'package:infinity_learning_zone/pages/basepage/base_page.dart';
import 'package:infinity_learning_zone/storage/get_storage_manager.dart';
import 'package:infinity_learning_zone/util/connectivity_check.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  ConnectivityCheck connectivityCheckController = Get.find<ConnectivityCheck>();

  bool securePass = true;
  bool loading = false;

  loginUser() {
    GetStorageManager.saveToken('token');
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          return connectivityCheckController.connectionStatus.value == 0
              ? Center(child: Lottie.asset('assets/notFoundAnimation.json'))
              : SingleChildScrollView(
                  child: Container(
                    width: Get.width,
                    height: Get.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/hero.jpg'),
                          fit: BoxFit.cover),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
                      child: Column(
                        children: [
                          //animation
                          SizedBox(
                            height: 250.h,
                            width: double.infinity,
                            child: Lottie.asset('assets/loginAnimation.json'),
                          ),
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
                          SizedBox(height: 20.h),
                          //login button
                          GlassContainer(
                            height: 50.h,
                            width: 200.w,
                            blur: 10,
                            border: 1,
                            child: MaterialButton(
                              onPressed: () {
                                setState(() {
                                  loading = !loading;
                                  loginUser();
                                  Get.off(() => const BasePage());
                                });
                              },
                              child: loading == true
                                  ? const CircularProgressIndicator(
                                      color: Colors.white,
                                    )
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Lottie.asset(Icons8.login,
                                            height: 25, width: 25),
                                        SizedBox(width: 5.w),
                                        const Text(
                                          'Log in',
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
                                onTap: () {},
                                child: GlassContainer(
                                  blur: 0,
                                  border: 1,
                                  radius: 50,
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
                                  radius: 50,
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
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Don\'n have an account?'),
                                TextButton(
                                    onPressed: () {
                                      Get.off(() => const RegisterPage(),
                                          transition: Transition.fadeIn);
                                    },
                                    child: const Text(
                                      'Create an account',
                                      style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.white),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
