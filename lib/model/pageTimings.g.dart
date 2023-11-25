// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageTimings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageTimings _$PageTimingsFromJson(Map<String, dynamic> json) => PageTimings(
      json['onContentLoad'] as num?,
      json['onLoad'] as num?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$PageTimingsToJson(PageTimings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('onContentLoad', instance.onContentLoad);
  writeNotNull('onLoad', instance.onLoad);
  writeNotNull('comment', instance.comment);
  return val;
}
