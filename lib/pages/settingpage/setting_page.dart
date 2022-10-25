import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
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
            child: Column(
              children: [
                Text('Setting Page'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
