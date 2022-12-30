import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/controllers/download/download_controller.dart';
import 'package:infinity_learning_zone/data/model/post_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PdfListWidget extends StatefulWidget {
  final PostModel postModel;
  final int index;
  const PdfListWidget(
      {super.key, required this.postModel, required this.index});

  @override
  State<PdfListWidget> createState() => _PdfListWidgetState();
}

class _PdfListWidgetState extends State<PdfListWidget> {
  bool downloading = false;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: LinearPercentIndicator(
            percent:
                DownloadController.to.downloadingIndex.contains(widget.index)
                    ? DownloadController.to.percent.toDouble()
                    : 0.0,
            lineHeight: 60,
            barRadius: const Radius.circular(15),
            backgroundColor: const Color.fromARGB(100, 22, 44, 33),
            progressColor: Colors.blue.withOpacity(0.8),
            center: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.picture_as_pdf,
                    color: Colors.white,
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.postModel.title.toString(),
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              // ignore: unrelated_type_equality_checks
                              DownloadController.to.downloadingIndex
                                      .contains(widget.index)
                                  ? '${DownloadController.to.progress}% downloaded'
                                  : '',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      DownloadController.to.setDownloadingIndex(widget.index);
                      String url =
                          'https://firebasestorage.googleapis.com/v0/b/flutter-firebase-demo-6a207.appspot.com/o/Final%20syllabus%20Fall22.pdf?alt=media&token=f60c657f-98e5-4c2f-897b-a4ac35f3831c';
                      DownloadController.to.downloadFile(
                          index: widget.index,
                          url: url,
                          fileName: 'syl',
                          endPoint: '.pdf');
                    },
                    child: const Icon(
                      Icons.download,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
