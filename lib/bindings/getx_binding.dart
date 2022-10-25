import 'package:get/get.dart';
import 'package:infinity_learning_zone/controllers/splashcontroller/splash_controller.dart';
import 'package:infinity_learning_zone/util/connectivity_check.dart';

class GetxBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashController());
    Get.put(ConnectivityCheck());
  }
}
