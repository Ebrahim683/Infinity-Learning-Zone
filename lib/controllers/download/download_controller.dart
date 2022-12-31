import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class DownloadController extends GetxController {
  static DownloadController get to => Get.find();
  final percent = 0.0.obs;
  final progress = '0.0'.obs;
  // var isDownloading = false.obs;
  final _downloadingIndex = <int>[].obs;
  List<int> get downloadingIndex => _downloadingIndex;

  void setDownloadingIndex(int index) {
    _downloadingIndex.add(index);
  }

  Future<void> downloadFile(
      {required String url,
      required String fileName,
      required String endPoint,
      required int index}) async {
    Dio dio = Dio();
    String path = '/storage/emulated/0/Download/';
    String milisecond = DateTime.now().millisecondsSinceEpoch.toString();
    String fullPath = '$path$fileName-$milisecond$endPoint';

    try {
           await dio.download(
        url,
        fullPath,
        onReceiveProgress: (count, total) {
          // isDownloading.value = true;
          percent.value = (count / total);
          progress.value = ((count / total) * 100).toStringAsFixed(0);
          log(progress.value);
        },
      ).then((value) {
        // isDownloading.value = false;
        percent.value = 0.0;
        log(value.toString());
      });
    } catch (e) {
      // isDownloading.value = false;
      percent.value = 0.0;
      log(e.toString());
    }
    // isDownloading.value = false;
    if (_downloadingIndex.contains(index)) {
      _downloadingIndex.remove(index);
    }
    _downloadingIndex.remove(index);
    percent.value = 0.0;
  }
}
