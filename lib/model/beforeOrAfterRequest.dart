import 'package:json_annotation/json_annotation.dart';

part 'beforeOrAfterRequest.g.dart';

@JsonSerializable(explicitToJson: true)
class BeforeOrAfterRequest {
  BeforeOrAfterRequest(
      this.expires, this.lastAccess, this.eTag, this.hitCount, this.comment);

  @JsonKey(includeIfNull: false)
  final String? expires;

  final String lastAccess;
  final String eTag;
  final num hitCount;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory BeforeOrAfterRequest.fromJson(Map<String, dynamic> json) =>
      _$BeforeOrAfterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BeforeOrAfterRequestToJson(this);
}
