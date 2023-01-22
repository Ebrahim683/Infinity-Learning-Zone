import 'package:freezed_annotation/freezed_annotation.dart';

part 'submitted_time_model.freezed.dart';
part 'submitted_time_model.g.dart';


@freezed
@JsonSerializable(explicitToJson: true)
class SubmittedTimeModel with _$SubmittedTimeModel {
  const factory SubmittedTimeModel({
    @JsonKey(name: 'examId') String? examId,
    @JsonKey(name: 'lastTime') List<int>? lastTime,
  }) = _SubmittedTimeModel;
  factory SubmittedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$SubmittedTimeModelFromJson(json);
}
