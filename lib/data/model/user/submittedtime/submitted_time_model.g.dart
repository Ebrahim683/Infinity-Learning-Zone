// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submitted_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************


Map<String, dynamic> _$SubmittedTimeModelToJson(SubmittedTimeModel instance) =>
    <String, dynamic>{
      'examId': instance.examId,
      'lastTime': instance.lastTime,
    };

_$_SubmittedTimeModel _$$_SubmittedTimeModelFromJson(
        Map<String, dynamic> json) =>
    _$_SubmittedTimeModel(
      examId: json['examId'] as String?,
      lastTime:
          (json['lastTime'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_SubmittedTimeModelToJson(
        _$_SubmittedTimeModel instance) =>
    <String, dynamic>{
      'examId': instance.examId,
      'lastTime': instance.lastTime,
    };
