// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'analyzerResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnalyzerResult _$AnalyzerResultFromJson(Map<String, dynamic> json) =>
    AnalyzerResult(
      json['harVersion'] as String,
      json['pageCount'] as int,
      json['entryCount'] as int,
    );

Map<String, dynamic> _$AnalyzerResultToJson(AnalyzerResult instance) =>
    <String, dynamic>{
      'harVersion': instance.harVersion,
      'pageCount': instance.pageCount,
      'entryCount': instance.entryCount,
    };
