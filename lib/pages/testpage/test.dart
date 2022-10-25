
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_learning_zone/util/connectivity_check.dart';
import 'package:lottie/lottie.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  ConnectivityCheck controller = Get.find<ConnectivityCheck>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          return controller.connectionStatus.value == 1
              ? Lottie.asset('assets/quizman.json')
              : (controller.connectionStatus.value == 2
                  ? Lottie.asset('assets/quizman.json')
                  : Lottie.asset('assets/notFoundAnimation.json'));
        }),
      ),
    );
  }
}
