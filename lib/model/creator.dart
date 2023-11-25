import 'package:json_annotation/json_annotation.dart';

part 'creator.g.dart';

@JsonSerializable(explicitToJson: true)
class Creator {
  Creator(this.name, this.version, this.comment);

  final String name;
  final String version;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Creator.fromJson(Map<String, dynamic> json) =>
      _$CreatorFromJson(json);

  Map<String, dynamic> toJson() => _$CreatorToJson(this);
}
