// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Response _$ResponseFromJson(Map<String, dynamic> json) => Response(
      json['status'] as num,
      json['statusText'] as String,
      json['httpVersion'] as String,
      (json['cookies'] as List<dynamic>)
          .map((e) => Cookie.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['headers'] as List<dynamic>)
          .map((e) => Header.fromJson(e as Map<String, dynamic>))
          .toList(),
      Content.fromJson(json['content'] as Map<String, dynamic>),
      json['redirectURL'] as String,
      json['headerSize'] as num?,
      json['bodySize'] as num,
      json['comment'] as String?,
    );

Map<String, dynamic> _$ResponseToJson(Response instance) {
  final val = <String, dynamic>{
    'status': instance.status,
    'statusText': instance.statusText,
    'httpVersion': instance.httpVersion,
    'cookies': instance.cookies.map((e) => e.toJson()).toList(),
    'headers': instance.headers.map((e) => e.toJson()).toList(),
    'content': instance.content.toJson(),
    'redirectURL': instance.redirectURL,
    'headerSize': instance.headerSize,
    'bodySize': instance.bodySize,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  return val;
}
