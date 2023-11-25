// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'browser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Browser _$BrowserFromJson(Map<String, dynamic> json) => Browser(
      json['name'] as String,
      json['version'] as String,
      json['comment'] as String?,
    );

Map<String, dynamic> _$BrowserToJson(Browser instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'version': instance.version,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  return val;
}
