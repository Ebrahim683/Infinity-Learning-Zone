import 'dart:developer';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/controllers/postcontroller/post_controller.dart';
import 'package:infinity_learning_zone/data/model/post_model.dart';
import 'package:infinity_learning_zone/pages/pdf/pdf_shimmer.dart';
import 'package:infinity_learning_zone/widget/pdf_list_widget.dart';

class PdfPage extends StatefulWidget {
  const PdfPage({super.key});

  @override
  State<PdfPage> createState() => _PdfPageState();
}

class _PdfPageState extends State<PdfPage> {
  @override
  void initState() {
    super.initState();
    log('pdf page');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hero.jpg'), fit: BoxFit.cover),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 4.0, sigmaX: 4.0),
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 70.h),
                    FutureBuilder(
                      future: PostController.getPost(),
                      builder: (context, snapshot) {
                        if (snapshot.data != null) {
                          List<PostModel> pdfList =
                              snapshot.data as List<PostModel>;
                          return Column(
                            children: List.generate(
                              pdfList.length,
                              (index) => PdfListWidget(
                                  postModel: pdfList[index], index: index),
                            ),
                          );
                        } else {
                          return Column(
                            children: List.generate(
                              15,
                              (index) => const PdfShimmer(),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
