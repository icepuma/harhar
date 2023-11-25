import 'package:json_annotation/json_annotation.dart';

import 'pageTimings.dart';

part 'page.g.dart';

@JsonSerializable(explicitToJson: true)
class Page {
  Page(this.startedDateTime, this.id, this.title, this.pageTimings,
      this.comment);

  final String startedDateTime;
  final String id;
  final String title;
  final PageTimings pageTimings;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Page.fromJson(Map<String, dynamic> json) => _$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);
}
