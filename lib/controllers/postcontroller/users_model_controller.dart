import 'dart:developer';

import 'package:get/get.dart';
import 'package:infinity_learning_zone/data/model/user/users_model.dart';
import 'package:infinity_learning_zone/data/network/api_service.dart';
import 'package:infinity_learning_zone/data/network/end_point.dart';

class UsersModelController extends GetxController {
  static Future<List<UsersModel>> getAllUsers() async {
    List<dynamic> result = await ApiService.getApi(users);
    var data = result.map((e) => UsersModel.fromJson(e)).toList();
    log('allUsers: $data');
    return data;
  }

  static Future<UsersModel> getSingleUser() async {
    dynamic result = await ApiService.getApi('$users/sabbir@sabbir.com');
    var data = UsersModel.fromJson(result);
    log(data.toString());
    return data;
  }
}
