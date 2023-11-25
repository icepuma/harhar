// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creator.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Creator _$CreatorFromJson(Map<String, dynamic> json) => Creator(
      json['name'] as String,
      json['version'] as String,
      json['comment'] as String?,
    );

Map<String, dynamic> _$CreatorToJson(Creator instance) {
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
