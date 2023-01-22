// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'users_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UsersModel _$UsersModelFromJson(Map<String, dynamic> json) {
  return _UsersModel.fromJson(json);
}

/// @nodoc
mixin _$UsersModel {
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'userName')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'examList')
  List<ExamListModel>? get examList => throw _privateConstructorUsedError;
  @JsonKey(name: 'submittedTime')
  List<SubmittedTimeModel>? get submittedTime =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsersModelCopyWith<UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersModelCopyWith<$Res> {
  factory $UsersModelCopyWith(
          UsersModel value, $Res Function(UsersModel) then) =
      _$UsersModelCopyWithImpl<$Res, UsersModel>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'examList') List<ExamListModel>? examList,
      @JsonKey(name: 'submittedTime') List<SubmittedTimeModel>? submittedTime});
}

/// @nodoc
class _$UsersModelCopyWithImpl<$Res, $Val extends UsersModel>
    implements $UsersModelCopyWith<$Res> {
  _$UsersModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? examList = freezed,
    Object? submittedTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      examList: freezed == examList
          ? _value.examList
          : examList // ignore: cast_nullable_to_non_nullable
              as List<ExamListModel>?,
      submittedTime: freezed == submittedTime
          ? _value.submittedTime
          : submittedTime // ignore: cast_nullable_to_non_nullable
              as List<SubmittedTimeModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UsersModelCopyWith<$Res>
    implements $UsersModelCopyWith<$Res> {
  factory _$$_UsersModelCopyWith(
          _$_UsersModel value, $Res Function(_$_UsersModel) then) =
      __$$_UsersModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') String? id,
      @JsonKey(name: 'userName') String? userName,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'password') String? password,
      @JsonKey(name: 'role') String? role,
      @JsonKey(name: 'examList') List<ExamListModel>? examList,
      @JsonKey(name: 'submittedTime') List<SubmittedTimeModel>? submittedTime});
}

/// @nodoc
class __$$_UsersModelCopyWithImpl<$Res>
    extends _$UsersModelCopyWithImpl<$Res, _$_UsersModel>
    implements _$$_UsersModelCopyWith<$Res> {
  __$$_UsersModelCopyWithImpl(
      _$_UsersModel _value, $Res Function(_$_UsersModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userName = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? role = freezed,
    Object? examList = freezed,
    Object? submittedTime = freezed,
  }) {
    return _then(_$_UsersModel(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      examList: freezed == examList
          ? _value._examList
          : examList // ignore: cast_nullable_to_non_nullable
              as List<ExamListModel>?,
      submittedTime: freezed == submittedTime
          ? _value._submittedTime
          : submittedTime // ignore: cast_nullable_to_non_nullable
              as List<SubmittedTimeModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsersModel implements _UsersModel {
  const _$_UsersModel(
      {@JsonKey(name: '_id')
          this.id,
      @JsonKey(name: 'userName')
          this.userName,
      @JsonKey(name: 'email')
          this.email,
      @JsonKey(name: 'password')
          this.password,
      @JsonKey(name: 'role')
          this.role,
      @JsonKey(name: 'examList')
          final List<ExamListModel>? examList,
      @JsonKey(name: 'submittedTime')
          final List<SubmittedTimeModel>? submittedTime})
      : _examList = examList,
        _submittedTime = submittedTime;

  factory _$_UsersModel.fromJson(Map<String, dynamic> json) =>
      _$$_UsersModelFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  @JsonKey(name: 'userName')
  final String? userName;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'password')
  final String? password;
  @override
  @JsonKey(name: 'role')
  final String? role;
  final List<ExamListModel>? _examList;
  @override
  @JsonKey(name: 'examList')
  List<ExamListModel>? get examList {
    final value = _examList;
    if (value == null) return null;
    if (_examList is EqualUnmodifiableListView) return _examList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SubmittedTimeModel>? _submittedTime;
  @override
  @JsonKey(name: 'submittedTime')
  List<SubmittedTimeModel>? get submittedTime {
    final value = _submittedTime;
    if (value == null) return null;
    if (_submittedTime is EqualUnmodifiableListView) return _submittedTime;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UsersModel(id: $id, userName: $userName, email: $email, password: $password, role: $role, examList: $examList, submittedTime: $submittedTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsersModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._examList, _examList) &&
            const DeepCollectionEquality()
                .equals(other._submittedTime, _submittedTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userName,
      email,
      password,
      role,
      const DeepCollectionEquality().hash(_examList),
      const DeepCollectionEquality().hash(_submittedTime));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsersModelCopyWith<_$_UsersModel> get copyWith =>
      __$$_UsersModelCopyWithImpl<_$_UsersModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsersModelToJson(
      this,
    );
  }
}

abstract class _UsersModel implements UsersModel {
  const factory _UsersModel(
      {@JsonKey(name: '_id')
          final String? id,
      @JsonKey(name: 'userName')
          final String? userName,
      @JsonKey(name: 'email')
          final String? email,
      @JsonKey(name: 'password')
          final String? password,
      @JsonKey(name: 'role')
          final String? role,
      @JsonKey(name: 'examList')
          final List<ExamListModel>? examList,
      @JsonKey(name: 'submittedTime')
          final List<SubmittedTimeModel>? submittedTime}) = _$_UsersModel;

  factory _UsersModel.fromJson(Map<String, dynamic> json) =
      _$_UsersModel.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override
  @JsonKey(name: 'userName')
  String? get userName;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'password')
  String? get password;
  @override
  @JsonKey(name: 'role')
  String? get role;
  @override
  @JsonKey(name: 'examList')
  List<ExamListModel>? get examList;
  @override
  @JsonKey(name: 'submittedTime')
  List<SubmittedTimeModel>? get submittedTime;
  @override
  @JsonKey(ignore: true)
  _$$_UsersModelCopyWith<_$_UsersModel> get copyWith =>
      throw _privateConstructorUsedError;
}
