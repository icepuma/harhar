// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beforeOrAfterRequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeforeOrAfterRequest _$BeforeOrAfterRequestFromJson(
        Map<String, dynamic> json) =>
    BeforeOrAfterRequest(
      json['expires'] as String?,
      json['lastAccess'] as String,
      json['eTag'] as String,
      json['hitCount'] as num,
      json['comment'] as String?,
    );

Map<String, dynamic> _$BeforeOrAfterRequestToJson(
    BeforeOrAfterRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expires', instance.expires);
  val['lastAccess'] = instance.lastAccess;
  val['eTag'] = instance.eTag;
  val['hitCount'] = instance.hitCount;
  writeNotNull('comment', instance.comment);
  return val;
}
