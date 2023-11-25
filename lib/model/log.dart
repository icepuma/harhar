import "package:json_annotation/json_annotation.dart";

import 'creator.dart';
import 'browser.dart';
import 'entry.dart';

part 'log.g.dart';

@JsonSerializable(explicitToJson: true)
class Log {
  Log(this.version, this.creator, this.browser, this.entries, this.comment);

  final String version;
  final Creator creator;

  @JsonKey(includeIfNull: false)
  final Browser? browser;

  // pages?

  @JsonKey(includeIfNull: false)
  final List<Entry> entries;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);

  Map<String, dynamic> toJson() => _$LogToJson(this);
}
