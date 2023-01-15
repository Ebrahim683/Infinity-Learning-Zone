import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';

class PdfShimmer extends StatefulWidget {
  const PdfShimmer({super.key});

  @override
  State<PdfShimmer> createState() => _PdfShimmerState();
}

class _PdfShimmerState extends State<PdfShimmer> {
  Widget skeleton(double height, double width, double radius) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 60,
        width: Get.width,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(1),
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 179, 174, 174),
          highlightColor: const Color.fromARGB(255, 238, 234, 234),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                skeleton(45, 45, 50),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: skeleton(10, Get.width / 1.4, 8)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5.h),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: skeleton(10, Get.width / 2, 8)),
                    ),
                  ],
                ),
                skeleton(45, 45, 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
