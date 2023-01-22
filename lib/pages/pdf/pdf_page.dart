import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinity_learning_zone/controllers/postcontroller/users_model_controller.dart';
import 'package:infinity_learning_zone/pages/pdf/pdf_list_widget.dart';
import 'package:infinity_learning_zone/pages/pdf/pdf_shimmer.dart';
import 'package:infinity_learning_zone/widget/bg_page_widget.dart';

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
    return BgPage.bgPage(
      height: 70.h,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FutureBuilder(
                future: UsersModelController.getAllUsers(),
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    // List<PostModel> pdfList = snapshot.data as List<PostModel>;
                    return Column(
                      children: List.generate(
                        10,
                        (index) => PdfListWidget(index: index),
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
    );
  }
}
