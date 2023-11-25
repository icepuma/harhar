// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Param _$ParamFromJson(Map<String, dynamic> json) => Param(
      json['name'] as String,
      json['value'] as String?,
      json['fileName'] as String?,
      json['contentType'] as String?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$ParamToJson(Param instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('value', instance.value);
  writeNotNull('fileName', instance.fileName);
  writeNotNull('contentType', instance.contentType);
  writeNotNull('comment', instance.comment);
  return val;
}
