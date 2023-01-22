import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_model.freezed.dart';
part 'result_model.g.dart';

@Freezed()
class ResultModel with _$ResultModel {
  const factory ResultModel({
    @JsonKey(name: 'qsNO') int? qsNO,
    @JsonKey(name: 'yourAns') String? yourAns,
    @JsonKey(name: 'originalAns') String? originalAns,
    @JsonKey(name: 'marks') int? marks,
  }) = _ResultModel;
  factory ResultModel.fromJson(Map<String, dynamic> json) => _$ResultModelFromJson(json);
}
