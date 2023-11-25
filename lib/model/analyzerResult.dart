import 'package:json_annotation/json_annotation.dart';

part 'analyzerResult.g.dart';

@JsonSerializable(explicitToJson: true)
class AnalyzerResult {
  AnalyzerResult(this.harVersion, this.pageCount, this.entryCount);

  final String harVersion;
  final int pageCount;
  final int entryCount;

  Map<String, dynamic> toJson() => _$AnalyzerResultToJson(this);
}
