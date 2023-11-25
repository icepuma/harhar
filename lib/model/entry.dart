import 'package:json_annotation/json_annotation.dart';

import 'request.dart';
import 'response.dart';
import 'cache.dart';
import 'timings.dart';

part 'entry.g.dart';

@JsonSerializable(explicitToJson: true)
class Entry {
  Entry(
      this.pageref,
      this.startedDateTime,
      this.time,
      this.request,
      this.response,
      this.cache,
      this.timings,
      this.serverIpAddress,
      this.connection,
      this.comment);

  @JsonKey(includeIfNull: false)
  final String? pageref;

  final String startedDateTime;
  final num time;
  final Request request;
  final Response response;
  final Cache cache;
  final Timings timings;

  @JsonKey(includeIfNull: false)
  final String? serverIpAddress;

  @JsonKey(includeIfNull: false)
  final String? connection;

  @JsonKey(includeIfNull: false)
  final String? comment;

  factory Entry.fromJson(Map<String, dynamic> json) => _$EntryFromJson(json);

  Map<String, dynamic> toJson() => _$EntryToJson(this);
}
