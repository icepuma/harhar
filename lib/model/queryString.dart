import 'package:json_annotation/json_annotation.dart';

part 'queryString.g.dart';

@JsonSerializable(explicitToJson: true)
class QueryString {
  QueryString(this.name, this.value, this.comment);

  final String name;
  final String? value;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory QueryString.fromJson(Map<String, dynamic> json) =>
      _$QueryStringFromJson(json);

  Map<String, dynamic> toJson() => _$QueryStringToJson(this);
}
