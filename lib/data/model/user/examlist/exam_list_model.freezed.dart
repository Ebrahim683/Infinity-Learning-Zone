// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExamListModel _$ExamListModelFromJson(Map<String, dynamic> json) {
  return _ExamListModel.fromJson(json);
}

/// @nodoc
mixin _$ExamListModel {
  @JsonKey(name: 'examName')
  String? get examName => throw _privateConstructorUsedError;
  @JsonKey(name: 'examId')
  String? get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'Marks')
  int? get marks => throw _privateConstructorUsedError;
  @JsonKey(name: 'result')
  List<ResultModel>? get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamListModelCopyWith<ExamListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamListModelCopyWith<$Res> {
  factory $ExamListModelCopyWith(
          ExamListModel value, $Res Function(ExamListModel) then) =
      _$ExamListModelCopyWithImpl<$Res, ExamListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'examName') String? examName,
      @JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'Marks') int? marks,
      @JsonKey(name: 'result') List<ResultModel>? result});
}

/// @nodoc
class _$ExamListModelCopyWithImpl<$Res, $Val extends ExamListModel>
    implements $ExamListModelCopyWith<$Res> {
  _$ExamListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = freezed,
    Object? examId = freezed,
    Object? marks = freezed,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      examName: freezed == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamListModelCopyWith<$Res>
    implements $ExamListModelCopyWith<$Res> {
  factory _$$_ExamListModelCopyWith(
          _$_ExamListModel value, $Res Function(_$_ExamListModel) then) =
      __$$_ExamListModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'examName') String? examName,
      @JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'Marks') int? marks,
      @JsonKey(name: 'result') List<ResultModel>? result});
}

/// @nodoc
class __$$_ExamListModelCopyWithImpl<$Res>
    extends _$ExamListModelCopyWithImpl<$Res, _$_ExamListModel>
    implements _$$_ExamListModelCopyWith<$Res> {
  __$$_ExamListModelCopyWithImpl(
      _$_ExamListModel _value, $Res Function(_$_ExamListModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examName = freezed,
    Object? examId = freezed,
    Object? marks = freezed,
    Object? result = freezed,
  }) {
    return _then(_$_ExamListModel(
      examName: freezed == examName
          ? _value.examName
          : examName // ignore: cast_nullable_to_non_nullable
              as String?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as int?,
      result: freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExamListModel implements _ExamListModel {
  const _$_ExamListModel(
      {@JsonKey(name: 'examName') this.examName,
      @JsonKey(name: 'examId') this.examId,
      @JsonKey(name: 'Marks') this.marks,
      @JsonKey(name: 'result') final List<ResultModel>? result})
      : _result = result;

  factory _$_ExamListModel.fromJson(Map<String, dynamic> json) =>
      _$$_ExamListModelFromJson(json);

  @override
  @JsonKey(name: 'examName')
  final String? examName;
  @override
  @JsonKey(name: 'examId')
  final String? examId;
  @override
  @JsonKey(name: 'Marks')
  final int? marks;
  final List<ResultModel>? _result;
  @override
  @JsonKey(name: 'result')
  List<ResultModel>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExamListModel(examName: $examName, examId: $examId, marks: $marks, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExamListModel &&
            (identical(other.examName, examName) ||
                other.examName == examName) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.marks, marks) || other.marks == marks) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, examName, examId, marks,
      const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamListModelCopyWith<_$_ExamListModel> get copyWith =>
      __$$_ExamListModelCopyWithImpl<_$_ExamListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamListModelToJson(
      this,
    );
  }
}

abstract class _ExamListModel implements ExamListModel {
  const factory _ExamListModel(
          {@JsonKey(name: 'examName') final String? examName,
          @JsonKey(name: 'examId') final String? examId,
          @JsonKey(name: 'Marks') final int? marks,
          @JsonKey(name: 'result') final List<ResultModel>? result}) =
      _$_ExamListModel;

  factory _ExamListModel.fromJson(Map<String, dynamic> json) =
      _$_ExamListModel.fromJson;

  @override
  @JsonKey(name: 'examName')
  String? get examName;
  @override
  @JsonKey(name: 'examId')
  String? get examId;
  @override
  @JsonKey(name: 'Marks')
  int? get marks;
  @override
  @JsonKey(name: 'result')
  List<ResultModel>? get result;
  @override
  @JsonKey(ignore: true)
  _$$_ExamListModelCopyWith<_$_ExamListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
