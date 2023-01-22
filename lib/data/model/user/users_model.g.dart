// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UsersModel _$$_UsersModelFromJson(Map<String, dynamic> json) =>
    _$_UsersModel(
      id: json['_id'] as String?,
      userName: json['userName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      role: json['role'] as String?,
      examList: (json['examList'] as List<dynamic>?)
          ?.map((e) => ExamListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      submittedTime: (json['submittedTime'] as List<dynamic>?)
          ?.map((e) => SubmittedTimeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UsersModelToJson(_$_UsersModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userName': instance.userName,
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
      'examList': instance.examList,
      'submittedTime': instance.submittedTime,
    };
