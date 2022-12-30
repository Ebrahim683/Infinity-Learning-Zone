import 'package:freezed_annotation/freezed_annotation.dart';


part 'post_model.freezed.dart';
part 'post_model.g.dart';

@Freezed()
class PostModel with _$PostModel {
  const factory PostModel({
    @JsonKey(name: 'title') String? title,
  }) = _PostModel;
  factory PostModel.fromJson(Map<String,dynamic> json)=>_$PostModelFromJson(json);
}
