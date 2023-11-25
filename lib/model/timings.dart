import 'package:json_annotation/json_annotation.dart';

part 'timings.g.dart';

@JsonSerializable(explicitToJson: true)
class Timings {
  Timings(this.blocked, this.dns, this.connect, this.send, this.wait,
      this.receive, this.ssl, this.comment);

  @JsonKey(includeIfNull: false)
  final num? blocked;

  @JsonKey(includeIfNull: false)
  final num? dns;

  @JsonKey(includeIfNull: false)
  final num? connect;

  final num send;
  final num wait;
  final num receive;

  @JsonKey(includeIfNull: false)
  final num? ssl;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);

  Map<String, dynamic> toJson() => _$TimingsToJson(this);
}
