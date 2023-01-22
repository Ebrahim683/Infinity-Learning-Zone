import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinity_learning_zone/data/model/user/examlist/exam_list_model.dart';
import 'package:infinity_learning_zone/data/model/user/submittedtime/submitted_time_model.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UsersModel with _$UsersModel {
  const factory UsersModel({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'role') String? role,
    @JsonKey(name: 'examList') List<ExamListModel>? examList,
    @JsonKey(name: 'submittedTime') List<SubmittedTimeModel>? submittedTime,
  }) = _UsersModel;
  factory UsersModel.fromJson(Map<String, dynamic> json) =>
      _$UsersModelFromJson(json);
}
