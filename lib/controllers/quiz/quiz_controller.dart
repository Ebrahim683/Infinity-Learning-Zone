import 'package:get/get.dart';

class QuizController extends GetxController {
  static QuizController get to => Get.find();

  final _correctAnsIndex = <int>[].obs;
  List<int> get correctAnsIndex => _correctAnsIndex;

  setCorrectAnsIndex(int index) {
    _correctAnsIndex.add(index);
  }
}
