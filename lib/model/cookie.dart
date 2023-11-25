import 'package:json_annotation/json_annotation.dart';

part 'cookie.g.dart';

@JsonSerializable(explicitToJson: true)
class Cookie {
  Cookie(this.name, this.value, this.path, this.domain, this.expires,
      this.httpOnly, this.secure, this.comment);

  final String name;
  final String value;

  @JsonKey(includeIfNull: false)
  final String? path;

  @JsonKey(includeIfNull: false)
  final String? domain;

  @JsonKey(includeIfNull: false)
  final String? expires;

  @JsonKey(includeIfNull: false)
  final bool? httpOnly;

  @JsonKey(includeIfNull: false)
  final bool? secure;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Cookie.fromJson(Map<String, dynamic> json) => _$CookieFromJson(json);

  Map<String, dynamic> toJson() => _$CookieToJson(this);
}
