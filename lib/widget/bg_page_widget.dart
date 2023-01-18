import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/util/image_string.dart';

class BgPage {
  static Widget bgPage(
      {double? height,
      Widget? body,
      AppBar? appBar,
      FloatingActionButton? fab}) {
    return Scaffold(
      appBar: appBar,
      floatingActionButton: fab,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(backgroundImage), fit: BoxFit.cover),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
            child: Padding(
              padding: EdgeInsets.only(top: height!),
              child: body,
            ),
          ),
        ),
      ),
    );
  }
}
