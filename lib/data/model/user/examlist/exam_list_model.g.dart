// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExamListModel _$$_ExamListModelFromJson(Map<String, dynamic> json) =>
    _$_ExamListModel(
      examName: json['examName'] as String?,
      examId: json['examId'] as String?,
      marks: json['Marks'] as int?,
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => ResultModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ExamListModelToJson(_$_ExamListModel instance) =>
    <String, dynamic>{
      'examName': instance.examName,
      'examId': instance.examId,
      'Marks': instance.marks,
      'result': instance.result,
    };
