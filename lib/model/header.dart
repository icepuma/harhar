import 'package:json_annotation/json_annotation.dart';

part 'header.g.dart';

@JsonSerializable(explicitToJson: true)
class Header {
  Header(this.name, this.value, this.comment);

  final String name;
  final String value;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Header.fromJson(Map<String, dynamic> json) => _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}
