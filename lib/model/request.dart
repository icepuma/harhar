import 'package:json_annotation/json_annotation.dart';

import 'cookie.dart';
import 'header.dart';
import 'queryString.dart';
import 'postData.dart';

part 'request.g.dart';

@JsonSerializable(explicitToJson: true)
class Request {
  Request(
      this.method,
      this.url,
      this.httpVersion,
      this.cookies,
      this.headers,
      this.queryString,
      this.postData,
      this.headerSize,
      this.bodySize,
      this.comment);

  final String method;
  final String url;
  final String httpVersion;
  final List<Cookie> cookies;
  final List<Header> headers;
  final List<QueryString> queryString;

  @JsonKey(includeIfNull: false)
  final PostData? postData;

  @JsonKey(includeIfNull: false)
  final num? headerSize;

  final num bodySize;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Request.fromJson(Map<String, dynamic> json) =>
      _$RequestFromJson(json);

  Map<String, dynamic> toJson() => _$RequestToJson(this);
}
