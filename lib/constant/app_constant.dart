import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppConstant {
  // static push(BuildContext context, Widget page) {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  // }

  // static pushOf(BuildContext context, Widget page) {
  //   Navigator.pushReplacement(
  //       context, MaterialPageRoute(builder: (context) => page));
  // }

  static SnackBar(String title, String msg) {
    Get.snackbar(title, msg,
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.black54,
        colorText: Colors.white);
  }
}
