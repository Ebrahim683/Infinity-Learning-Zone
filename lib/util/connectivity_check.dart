import 'dart:async';
import 'dart:developer';
import 'package:connectivity/connectivity.dart';
import 'package:get/get.dart';

class ConnectivityCheck extends GetxController {
  var connectionStatus = 0.obs;
  final Connectivity connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? connectivitySubscription;

  Future<void> initConnectivity() async {
    ConnectivityResult? result;
    try {
      result = await connectivity.checkConnectivity();
    } catch (e) {
      log(e.toString());
    }
    return updateConnectionStatus(result!);
  }

  updateConnectionStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionStatus.value = 1;
        break;
      case ConnectivityResult.mobile:
        connectionStatus.value = 2;
        break;
      case ConnectivityResult.none:
        connectionStatus.value = 0;
        break;
      default:
        Get.snackbar('Network Error!', 'Failed to get network connection');
        break;
    }
  }

  @override
  void onInit() {
    super.onInit();
    initConnectivity();
    // connectivitySubscription =
    //     connectivity.onConnectivityChanged.listen(updateConnectionStatus);
  }
}
