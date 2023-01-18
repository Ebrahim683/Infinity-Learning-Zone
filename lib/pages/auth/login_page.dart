import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:infinity_learning_zone/constant/app_constant.dart';
import 'package:infinity_learning_zone/controllers/authcontroller/auth_controller.dart';
import 'package:infinity_learning_zone/pages/auth/register_page.dart';
import 'package:infinity_learning_zone/util/connectivity_check.dart';
import 'package:infinity_learning_zone/util/image_string.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';
import 'package:infinity_learning_zone/widget/button_widget.dart';
import 'package:infinity_learning_zone/widget/text_widget.dart';
import 'package:loading_overlay/loading_overlay.dart';
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

  loginUser(String email, String password) {
    // Get.off(() => const BasePage());
    AuthController.userLogin(email, password);
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
              : LoadingOverlay(
                  isLoading: AuthController.isLoading.value,
                  progressIndicator: Lottie.asset(
                    'assets/infinityCircle.json',
                    height: 200,
                    width: 200,
                  ),
                  child: BgPage.bgPage(
                    height: 0,
                    body: Column(
                      children: [
                        //animation
                        SizedBox(
                          height: 250.h,
                          width: double.infinity,
                          child: Lottie.asset('assets/loginAnimation.json'),
                        ),
                        SizedBox(height: 5.h),
                        //email input
                        TextWidget.textInput(
                            prefix: Icons.email_outlined,
                            hint: 'Email',
                            controller: _emailController),
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
                                  borderSide: BorderSide.none),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        //login button
                        ButtonWidget.roundGlassButton(
                            icon: Icons8.login,
                            title: 'Log in',
                            onClick: () {
                              String email = _emailController.text.trim();
                              String password = _passwordController.text.trim();
                              if (email == '') {
                                AppConstant.SnackBar(
                                    'Error!', 'Enter valid email address');
                              } else if (password == '') {
                                AppConstant.SnackBar(
                                    'Error!', 'Enter password');
                              } else if (password.length < 6) {
                                AppConstant.SnackBar('Error!',
                                    'Your password should be 6 character');
                              } else {
                                loginUser(email, password);
                              }
                            }),
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
                                    googleIcon,
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
                                    facebookIcon,
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
                                    twitterIcon,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
        }),
      ),
    );
  }
}
