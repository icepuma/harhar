// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) => Page(
      json['startedDateTime'] as String,
      json['id'] as String,
      json['title'] as String,
      PageTimings.fromJson(json['pageTimings'] as Map<String, dynamic>),
      json['comment'] as String?,
    );

Map<String, dynamic> _$PageToJson(Page instance) {
  final val = <String, dynamic>{
    'startedDateTime': instance.startedDateTime,
    'id': instance.id,
    'title': instance.title,
    'pageTimings': instance.pageTimings.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comment', instance.comment);
  return val;
}
