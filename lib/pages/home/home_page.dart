import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/controllers/postcontroller/users_model_controller.dart';
import 'package:infinity_learning_zone/data/model/user/users_model.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            child: BgPage.bgPage(
              height: 70.h,
              body: Column(
                children: [
                  Text('Home page'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
