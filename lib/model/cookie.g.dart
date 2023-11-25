// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cookie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cookie _$CookieFromJson(Map<String, dynamic> json) => Cookie(
      json['name'] as String,
      json['value'] as String,
      json['path'] as String?,
      json['domain'] as String?,
      json['expires'] as String?,
      json['httpOnly'] as bool?,
      json['secure'] as bool?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$CookieToJson(Cookie instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('path', instance.path);
  writeNotNull('domain', instance.domain);
  writeNotNull('expires', instance.expires);
  writeNotNull('httpOnly', instance.httpOnly);
  writeNotNull('secure', instance.secure);
  writeNotNull('comment', instance.comment);
  return val;
}
