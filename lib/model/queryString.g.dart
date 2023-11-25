// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queryString.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryString _$QueryStringFromJson(Map<String, dynamic> json) => QueryString(
      json['name'] as String,
      json['value'] as String?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$QueryStringToJson(QueryString instance) {
  final val = <String, dynamic>{
    'name': instance.name,
    'value': instance.value,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  return val;
}
