// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultModel _$ResultModelFromJson(Map<String, dynamic> json) {
  return _ResultModel.fromJson(json);
}

/// @nodoc
mixin _$ResultModel {
  @JsonKey(name: 'qsNO')
  int? get qsNO => throw _privateConstructorUsedError;
  @JsonKey(name: 'yourAns')
  String? get yourAns => throw _privateConstructorUsedError;
  @JsonKey(name: 'originalAns')
  String? get originalAns => throw _privateConstructorUsedError;
  @JsonKey(name: 'marks')
  int? get marks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultModelCopyWith<ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultModelCopyWith<$Res> {
  factory $ResultModelCopyWith(
          ResultModel value, $Res Function(ResultModel) then) =
      _$ResultModelCopyWithImpl<$Res, ResultModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'qsNO') int? qsNO,
      @JsonKey(name: 'yourAns') String? yourAns,
      @JsonKey(name: 'originalAns') String? originalAns,
      @JsonKey(name: 'marks') int? marks});
}

/// @nodoc
class _$ResultModelCopyWithImpl<$Res, $Val extends ResultModel>
    implements $ResultModelCopyWith<$Res> {
  _$ResultModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qsNO = freezed,
    Object? yourAns = freezed,
    Object? originalAns = freezed,
    Object? marks = freezed,
  }) {
    return _then(_value.copyWith(
      qsNO: freezed == qsNO
          ? _value.qsNO
          : qsNO // ignore: cast_nullable_to_non_nullable
              as int?,
      yourAns: freezed == yourAns
          ? _value.yourAns
          : yourAns // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAns: freezed == originalAns
          ? _value.originalAns
          : originalAns // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultModelCopyWith<$Res>
    implements $ResultModelCopyWith<$Res> {
  factory _$$_ResultModelCopyWith(
          _$_ResultModel value, $Res Function(_$_ResultModel) then) =
      __$$_ResultModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'qsNO') int? qsNO,
      @JsonKey(name: 'yourAns') String? yourAns,
      @JsonKey(name: 'originalAns') String? originalAns,
      @JsonKey(name: 'marks') int? marks});
}

/// @nodoc
class __$$_ResultModelCopyWithImpl<$Res>
    extends _$ResultModelCopyWithImpl<$Res, _$_ResultModel>
    implements _$$_ResultModelCopyWith<$Res> {
  __$$_ResultModelCopyWithImpl(
      _$_ResultModel _value, $Res Function(_$_ResultModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qsNO = freezed,
    Object? yourAns = freezed,
    Object? originalAns = freezed,
    Object? marks = freezed,
  }) {
    return _then(_$_ResultModel(
      qsNO: freezed == qsNO
          ? _value.qsNO
          : qsNO // ignore: cast_nullable_to_non_nullable
              as int?,
      yourAns: freezed == yourAns
          ? _value.yourAns
          : yourAns // ignore: cast_nullable_to_non_nullable
              as String?,
      originalAns: freezed == originalAns
          ? _value.originalAns
          : originalAns // ignore: cast_nullable_to_non_nullable
              as String?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultModel implements _ResultModel {
  const _$_ResultModel(
      {@JsonKey(name: 'qsNO') this.qsNO,
      @JsonKey(name: 'yourAns') this.yourAns,
      @JsonKey(name: 'originalAns') this.originalAns,
      @JsonKey(name: 'marks') this.marks});

  factory _$_ResultModel.fromJson(Map<String, dynamic> json) =>
      _$$_ResultModelFromJson(json);

  @override
  @JsonKey(name: 'qsNO')
  final int? qsNO;
  @override
  @JsonKey(name: 'yourAns')
  final String? yourAns;
  @override
  @JsonKey(name: 'originalAns')
  final String? originalAns;
  @override
  @JsonKey(name: 'marks')
  final int? marks;

  @override
  String toString() {
    return 'ResultModel(qsNO: $qsNO, yourAns: $yourAns, originalAns: $originalAns, marks: $marks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultModel &&
            (identical(other.qsNO, qsNO) || other.qsNO == qsNO) &&
            (identical(other.yourAns, yourAns) || other.yourAns == yourAns) &&
            (identical(other.originalAns, originalAns) ||
                other.originalAns == originalAns) &&
            (identical(other.marks, marks) || other.marks == marks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, qsNO, yourAns, originalAns, marks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      __$$_ResultModelCopyWithImpl<_$_ResultModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultModelToJson(
      this,
    );
  }
}

abstract class _ResultModel implements ResultModel {
  const factory _ResultModel(
      {@JsonKey(name: 'qsNO') final int? qsNO,
      @JsonKey(name: 'yourAns') final String? yourAns,
      @JsonKey(name: 'originalAns') final String? originalAns,
      @JsonKey(name: 'marks') final int? marks}) = _$_ResultModel;

  factory _ResultModel.fromJson(Map<String, dynamic> json) =
      _$_ResultModel.fromJson;

  @override
  @JsonKey(name: 'qsNO')
  int? get qsNO;
  @override
  @JsonKey(name: 'yourAns')
  String? get yourAns;
  @override
  @JsonKey(name: 'originalAns')
  String? get originalAns;
  @override
  @JsonKey(name: 'marks')
  int? get marks;
  @override
  @JsonKey(ignore: true)
  _$$_ResultModelCopyWith<_$_ResultModel> get copyWith =>
      throw _privateConstructorUsedError;
}
