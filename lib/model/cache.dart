import 'package:json_annotation/json_annotation.dart';

import 'beforeOrAfterRequest.dart';

part 'cache.g.dart';

@JsonSerializable(explicitToJson: true)
class Cache {
  Cache(this.beforeRequest, this.afterRequest, this.comment);

  @JsonKey(includeIfNull: false)
  final BeforeOrAfterRequest? beforeRequest;

  @JsonKey(includeIfNull: false)
  final BeforeOrAfterRequest? afterRequest;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Cache.fromJson(Map<String, dynamic> json) => _$CacheFromJson(json);

  Map<String, dynamic> toJson() => _$CacheToJson(this);
}
