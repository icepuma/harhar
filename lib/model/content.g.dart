// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
      json['size'] as num,
      json['compression'] as num?,
      json['mimeType'] as String,
      json['text'] as String?,
      json['encoding'] as String?,
      json['comment'] as String?,
    );

Map<String, dynamic> _$ContentToJson(Content instance) {
  final val = <String, dynamic>{
    'size': instance.size,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('compression', instance.compression);
  val['mimeType'] = instance.mimeType;
  writeNotNull('text', instance.text);
  writeNotNull('encoding', instance.encoding);
  writeNotNull('comment', instance.comment);
  return val;
}
