// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Log _$LogFromJson(Map<String, dynamic> json) => Log(
      json['version'] as String,
      Creator.fromJson(json['creator'] as Map<String, dynamic>),
      json['browser'] == null
          ? null
          : Browser.fromJson(json['browser'] as Map<String, dynamic>),
      (json['pages'] as List<dynamic>?)
          ?.map((e) => Page.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['entries'] as List<dynamic>)
          .map((e) => Entry.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['comment'] as String?,
    );

Map<String, dynamic> _$LogToJson(Log instance) {
  final val = <String, dynamic>{
    'version': instance.version,
    'creator': instance.creator.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('browser', instance.browser?.toJson());
  writeNotNull('pages', instance.pages?.map((e) => e.toJson()).toList());
  val['entries'] = instance.entries.map((e) => e.toJson()).toList();
  writeNotNull('comment', instance.comment);
  return val;
}
