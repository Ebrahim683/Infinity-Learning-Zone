import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

class TextWidget {
  static textInput({prefix, String? hint, TextEditingController? controller}) {
    return GlassContainer(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      blur: 0,
      border: 1,
      height: 50.h,
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            prefixIcon: Icon(prefix),
            hintText: hint,
            border: const OutlineInputBorder(borderSide: BorderSide.none)),
      ),
    );
  }
}
