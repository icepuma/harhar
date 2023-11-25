import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable(explicitToJson: true)
class Content {
  Content(this.size, this.compression, this.mimeType, this.text, this.encoding,
      this.comment);

  final num size;

  @JsonKey(includeIfNull: false)
  final num? compression;

  final String mimeType;

  @JsonKey(includeIfNull: false)
  final String? text;

  @JsonKey(includeIfNull: false)
  final String? encoding;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
