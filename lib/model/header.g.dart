// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Header _$HeaderFromJson(Map<String, dynamic> json) => Header(
      json['name'] as String,
      json['value'] as String,
      json['comment'] as String?,
    );

Map<String, dynamic> _$HeaderToJson(Header instance) {
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
