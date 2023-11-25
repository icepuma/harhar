// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timings _$TimingsFromJson(Map<String, dynamic> json) => Timings(
      json['blocked'] as num?,
      json['dns'] as num?,
      json['connect'] as num?,
      json['send'] as num,
      json['wait'] as num,
      json['receive'] as num,
      json['ssl'] as num?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$TimingsToJson(Timings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blocked', instance.blocked);
  writeNotNull('dns', instance.dns);
  writeNotNull('connect', instance.connect);
  val['send'] = instance.send;
  val['wait'] = instance.wait;
  val['receive'] = instance.receive;
  writeNotNull('ssl', instance.ssl);
  writeNotNull('comment', instance.comment);
  return val;
}
