import 'package:json_annotation/json_annotation.dart';

import 'cookie.dart';
import 'header.dart';
import 'content.dart';

part 'response.g.dart';

@JsonSerializable(explicitToJson: true)
class Response {
  Response(
      this.status,
      this.statusText,
      this.httpVersion,
      this.cookies,
      this.headers,
      this.content,
      this.redirectURL,
      this.headerSize,
      this.bodySize,
      this.comment);

  final num status;
  final String statusText;
  final String httpVersion;
  final List<Cookie> cookies;
  final List<Header> headers;
  final Content content;
  final String redirectURL;
  final num? headerSize;
  final num bodySize;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Response.fromJson(Map<String, dynamic> json) =>
      _$ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ResponseToJson(this);
}
