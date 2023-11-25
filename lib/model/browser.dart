import 'package:json_annotation/json_annotation.dart';

part 'browser.g.dart';

@JsonSerializable(explicitToJson: true)
class Browser {
  Browser(this.name, this.version, this.comment);

  final String name;
  final String version;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Browser.fromJson(Map<String, dynamic> json) =>
      _$BrowserFromJson(json);

  Map<String, dynamic> toJson() => _$BrowserToJson(this);
}
