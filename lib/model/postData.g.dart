// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostData _$PostDataFromJson(Map<String, dynamic> json) => PostData(
      json['mimeType'] as String,
      (json['params'] as List<dynamic>?)
          ?.map((e) => Param.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['text'] as String,
      json['comment'] as String?,
    );

Map<String, dynamic> _$PostDataToJson(PostData instance) {
  final val = <String, dynamic>{
    'mimeType': instance.mimeType,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('params', instance.params?.map((e) => e.toJson()).toList());
  val['text'] = instance.text;
  writeNotNull('comment', instance.comment);
  return val;
}
