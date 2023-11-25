// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Entry _$EntryFromJson(Map<String, dynamic> json) => Entry(
      json['pageref'] as String?,
      json['startedDateTime'] as String,
      json['time'] as num,
      Request.fromJson(json['request'] as Map<String, dynamic>),
      Response.fromJson(json['response'] as Map<String, dynamic>),
      Cache.fromJson(json['cache'] as Map<String, dynamic>),
      Timings.fromJson(json['timings'] as Map<String, dynamic>),
      json['serverIpAddress'] as String?,
      json['connection'] as String?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$EntryToJson(Entry instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pageref', instance.pageref);
  val['startedDateTime'] = instance.startedDateTime;
  val['time'] = instance.time;
  val['request'] = instance.request.toJson();
  val['response'] = instance.response.toJson();
  val['cache'] = instance.cache.toJson();
  val['timings'] = instance.timings.toJson();
  writeNotNull('serverIpAddress', instance.serverIpAddress);
  writeNotNull('connection', instance.connection);
  writeNotNull('comment', instance.comment);
  return val;
}
