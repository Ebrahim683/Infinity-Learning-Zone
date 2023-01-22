import 'package:freezed_annotation/freezed_annotation.dart';

import '../result/result_model.dart';


part 'exam_list_model.freezed.dart';
part 'exam_list_model.g.dart';


@freezed
class ExamListModel with _$ExamListModel {
  const factory ExamListModel({
    @JsonKey(name: 'examName') String? examName,
    @JsonKey(name: 'examId') String? examId,
    @JsonKey(name: 'Marks') int? marks,
    @JsonKey(name: 'result') List<ResultModel>? result,
  }) = _ExamListModel;
  factory ExamListModel.fromJson(Map<String, dynamic> json) =>
      _$ExamListModelFromJson(json);
}
