// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cache.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cache _$CacheFromJson(Map<String, dynamic> json) => Cache(
      json['beforeRequest'] == null
          ? null
          : BeforeOrAfterRequest.fromJson(
              json['beforeRequest'] as Map<String, dynamic>),
      json['afterRequest'] == null
          ? null
          : BeforeOrAfterRequest.fromJson(
              json['afterRequest'] as Map<String, dynamic>),
      json['comment'] as String?,
    );

Map<String, dynamic> _$CacheToJson(Cache instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('beforeRequest', instance.beforeRequest?.toJson());
  writeNotNull('afterRequest', instance.afterRequest?.toJson());
  writeNotNull('comment', instance.comment);
  return val;
}
