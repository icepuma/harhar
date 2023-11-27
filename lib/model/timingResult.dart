import 'package:json_annotation/json_annotation.dart';

part 'timingResult.g.dart';

@JsonSerializable(explicitToJson: true)
class TimingResult {
  TimingResult(this.requestUrl, this.total, this.ssl, this.blocked, this.dns,
      this.connect, this.send, this.wait, this.receive);

  final String requestUrl;
  final num total;
  final num ssl;
  final num blocked;
  final num dns;
  final num connect;
  final num send;
  final num wait;
  final num receive;

  factory TimingResult.fromJson(Map<String, dynamic> json) =>
      _$TimingResultFromJson(json);

  Map<String, dynamic> toJson() => _$TimingResultToJson(this);
}
