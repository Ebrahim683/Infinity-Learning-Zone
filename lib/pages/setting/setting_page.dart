import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return BgPage.bgPage(
      height: 70.h,
      body: Column(
        children: [
          SizedBox(height: 70.h),
          Text('Setting Page'),
        ],
      ),
    );
  }
}
