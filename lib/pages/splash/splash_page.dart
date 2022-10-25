import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinity_learning_zone/controllers/splashcontroller/splash_controller.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    SplashController.navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 68, 77),
      body: Center(
        child: Stack(
          children: [
            Center(
              child: SizedBox(
                height: 300.h,
                width: 300.w,
                child: Lottie.asset('assets/circleAnimation.json'),
              ),
            ),
            Center(
              child: Image.asset(
                'images/logo.png',
                height: 100,
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
