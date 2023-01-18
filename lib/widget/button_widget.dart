import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:lottie/lottie.dart';

class ButtonWidget {
  static roundGlassButton({String? icon, String? title, Function? onClick}) {
    return GlassContainer(
      height: 50.h,
      width: 200.w,
      blur: 10,
      border: 1,
      child: MaterialButton(
        onPressed: () {
          onClick!();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(icon!, height: 30, width: 30),
            SizedBox(width: 5.w),
            Text(
              title!,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
