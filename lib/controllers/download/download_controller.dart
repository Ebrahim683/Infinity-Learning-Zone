import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DownloadController extends GetxController {
  static var progress = ''.obs;
  static var isDownloading = false.obs;

  static Future<void> downloadFile(
      {required String url,
      required String fileName,
      required String endPoint}) async {
    Dio dio = Dio();
    String path = '/storage/emulated/0/Download/';
    String milisecond = DateTime.now().millisecondsSinceEpoch.toString();
    String fullPath = '$path$fileName-$milisecond$endPoint';

    try {
      await dio.download(
        url,
        fullPath,
        onReceiveProgress: (count, total) {
          isDownloading.value = true;
          progress.value =
              '${((count / total) * 100).toStringAsFixed(0)}% downloaded';
          log(progress.value);
        },
      ).then((value) {
        log(value.toString());
      });
    } catch (e) {
      isDownloading.value = false;
      log(e.toString());
    }
    isDownloading.value = false;
  }
}
