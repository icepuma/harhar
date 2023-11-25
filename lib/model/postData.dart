import 'package:json_annotation/json_annotation.dart';

import 'param.dart';

part 'postData.g.dart';

@JsonSerializable(explicitToJson: true)
class PostData {
  PostData(this.mimeType, this.params, this.text, this.comment);

  final String mimeType;

  @JsonKey(includeIfNull: false)
  final List<Param>? params; // HINT: not according to spec

  final String text;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory PostData.fromJson(Map<String, dynamic> json) =>
      _$PostDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostDataToJson(this);
}
