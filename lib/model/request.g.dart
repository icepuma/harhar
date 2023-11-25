// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Request _$RequestFromJson(Map<String, dynamic> json) => Request(
      json['method'] as String,
      json['url'] as String,
      json['httpVersion'] as String,
      (json['cookies'] as List<dynamic>)
          .map((e) => Cookie.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['headers'] as List<dynamic>)
          .map((e) => Header.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['queryString'] as List<dynamic>)
          .map((e) => QueryString.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['postData'] == null
          ? null
          : PostData.fromJson(json['postData'] as Map<String, dynamic>),
      json['headerSize'] as num?,
      json['bodySize'] as num,
      json['comment'] as String?,
    );

Map<String, dynamic> _$RequestToJson(Request instance) {
  final val = <String, dynamic>{
    'method': instance.method,
    'url': instance.url,
    'httpVersion': instance.httpVersion,
    'cookies': instance.cookies.map((e) => e.toJson()).toList(),
    'headers': instance.headers.map((e) => e.toJson()).toList(),
    'queryString': instance.queryString.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('postData', instance.postData?.toJson());
  writeNotNull('headerSize', instance.headerSize);
  val['bodySize'] = instance.bodySize;
  writeNotNull('comment', instance.comment);
  return val;
}
