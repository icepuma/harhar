import 'package:json_annotation/json_annotation.dart';

import 'timingResult.dart';

part 'analyzerResult.g.dart';

@JsonSerializable(explicitToJson: true)
class AnalyzerResult {
  AnalyzerResult(this.harVersion, this.pageCount, this.entryCount,
      this.topTenSlowestRequests);

  final String harVersion;
  final int pageCount;
  final int entryCount;
  final List<TimingResult> topTenSlowestRequests;

  factory AnalyzerResult.fromJson(Map<String, dynamic> json) =>
      _$AnalyzerResultFromJson(json);

  Map<String, dynamic> toJson() => _$AnalyzerResultToJson(this);
}
