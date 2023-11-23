import "package:json_annotation/json_annotation.dart";

part 'log.g.dart';

@JsonSerializable()
class Log {
  Log(this.version, this.comment);

  final String version;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  Map<String, dynamic> toJson() => _$LogToJson(this);
}
