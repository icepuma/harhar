import 'package:json_annotation/json_annotation.dart';

part 'pageTimings.g.dart';

@JsonSerializable(explicitToJson: true)
class PageTimings {
  PageTimings(this.onContentLoad, this.onLoad, this.comment);

  @JsonKey(includeIfNull: false)
  final num? onContentLoad;

  @JsonKey(includeIfNull: false)
  final num? onLoad;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory PageTimings.fromJson(Map<String, dynamic> json) =>
      _$PageTimingsFromJson(json);

  Map<String, dynamic> toJson() => _$PageTimingsToJson(this);
}
