// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submitted_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubmittedTimeModel _$SubmittedTimeModelFromJson(Map<String, dynamic> json) {
  return _SubmittedTimeModel.fromJson(json);
}

/// @nodoc
mixin _$SubmittedTimeModel {
  @JsonKey(name: 'examId')
  String? get examId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastTime')
  List<int>? get lastTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmittedTimeModelCopyWith<SubmittedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmittedTimeModelCopyWith<$Res> {
  factory $SubmittedTimeModelCopyWith(
          SubmittedTimeModel value, $Res Function(SubmittedTimeModel) then) =
      _$SubmittedTimeModelCopyWithImpl<$Res, SubmittedTimeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'lastTime') List<int>? lastTime});
}

/// @nodoc
class _$SubmittedTimeModelCopyWithImpl<$Res, $Val extends SubmittedTimeModel>
    implements $SubmittedTimeModelCopyWith<$Res> {
  _$SubmittedTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = freezed,
    Object? lastTime = freezed,
  }) {
    return _then(_value.copyWith(
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTime: freezed == lastTime
          ? _value.lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubmittedTimeModelCopyWith<$Res>
    implements $SubmittedTimeModelCopyWith<$Res> {
  factory _$$_SubmittedTimeModelCopyWith(_$_SubmittedTimeModel value,
          $Res Function(_$_SubmittedTimeModel) then) =
      __$$_SubmittedTimeModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'examId') String? examId,
      @JsonKey(name: 'lastTime') List<int>? lastTime});
}

/// @nodoc
class __$$_SubmittedTimeModelCopyWithImpl<$Res>
    extends _$SubmittedTimeModelCopyWithImpl<$Res, _$_SubmittedTimeModel>
    implements _$$_SubmittedTimeModelCopyWith<$Res> {
  __$$_SubmittedTimeModelCopyWithImpl(
      _$_SubmittedTimeModel _value, $Res Function(_$_SubmittedTimeModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = freezed,
    Object? lastTime = freezed,
  }) {
    return _then(_$_SubmittedTimeModel(
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      lastTime: freezed == lastTime
          ? _value._lastTime
          : lastTime // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubmittedTimeModel implements _SubmittedTimeModel {
  const _$_SubmittedTimeModel(
      {@JsonKey(name: 'examId') this.examId,
      @JsonKey(name: 'lastTime') final List<int>? lastTime})
      : _lastTime = lastTime;

  factory _$_SubmittedTimeModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubmittedTimeModelFromJson(json);

  @override
  @JsonKey(name: 'examId')
  final String? examId;
  final List<int>? _lastTime;
  @override
  @JsonKey(name: 'lastTime')
  List<int>? get lastTime {
    final value = _lastTime;
    if (value == null) return null;
    if (_lastTime is EqualUnmodifiableListView) return _lastTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SubmittedTimeModel(examId: $examId, lastTime: $lastTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmittedTimeModel &&
            (identical(other.examId, examId) || other.examId == examId) &&
            const DeepCollectionEquality().equals(other._lastTime, _lastTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, examId, const DeepCollectionEquality().hash(_lastTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmittedTimeModelCopyWith<_$_SubmittedTimeModel> get copyWith =>
      __$$_SubmittedTimeModelCopyWithImpl<_$_SubmittedTimeModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubmittedTimeModelToJson(
      this,
    );
  }
}

abstract class _SubmittedTimeModel implements SubmittedTimeModel {
  const factory _SubmittedTimeModel(
          {@JsonKey(name: 'examId') final String? examId,
          @JsonKey(name: 'lastTime') final List<int>? lastTime}) =
      _$_SubmittedTimeModel;

  factory _SubmittedTimeModel.fromJson(Map<String, dynamic> json) =
      _$_SubmittedTimeModel.fromJson;

  @override
  @JsonKey(name: 'examId')
  String? get examId;
  @override
  @JsonKey(name: 'lastTime')
  List<int>? get lastTime;
  @override
  @JsonKey(ignore: true)
  _$$_SubmittedTimeModelCopyWith<_$_SubmittedTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
