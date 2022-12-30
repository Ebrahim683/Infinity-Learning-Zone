import 'package:get/get.dart';
import 'package:infinity_learning_zone/data/model/post_model.dart';
import 'package:infinity_learning_zone/data/network/api_service.dart';
import 'package:infinity_learning_zone/data/network/end_point.dart';

class PostController extends GetxController {
  static Future<List<PostModel>> getPost() async {
    List<dynamic> result = await ApiService.getApi(postPoint);
    var data = result.map((e) => PostModel.fromJson(e)).toList();
    return data;
  }
}
