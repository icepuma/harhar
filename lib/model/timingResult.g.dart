// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timingResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimingResult _$TimingResultFromJson(Map<String, dynamic> json) => TimingResult(
      json['requestUrl'] as String,
      json['total'] as num,
      json['ssl'] as num,
      json['blocked'] as num,
      json['dns'] as num,
      json['connect'] as num,
      json['send'] as num,
      json['wait'] as num,
      json['receive'] as num,
    );

Map<String, dynamic> _$TimingResultToJson(TimingResult instance) =>
    <String, dynamic>{
      'requestUrl': instance.requestUrl,
      'total': instance.total,
      'ssl': instance.ssl,
      'blocked': instance.blocked,
      'dns': instance.dns,
      'connect': instance.connect,
      'send': instance.send,
      'wait': instance.wait,
      'receive': instance.receive,
    };
