import 'package:json_annotation/json_annotation.dart';

import 'log.dart';

part 'har.g.dart';

@JsonSerializable(explicitToJson: true)
class Har {
  Har(this.log);

  final Log log;

  factory Har.fromJson(Map<String, dynamic> json) => _$HarFromJson(json);

  Map<String, dynamic> toJson() => _$HarToJson(this);
}
