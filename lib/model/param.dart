import 'package:json_annotation/json_annotation.dart';

part 'param.g.dart';

@JsonSerializable(explicitToJson: true)
class Param {
  Param(this.name, this.value, this.fileName, this.contentType, this.comment);

  final String name;

  @JsonKey(includeIfNull: false)
  final String? value;

  @JsonKey(includeIfNull: false)
  final String? fileName;

  @JsonKey(includeIfNull: false)
  final String? contentType;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);

  Map<String, dynamic> toJson() => _$ParamToJson(this);
}
