import 'dart:convert';
import 'dart:io';

import 'package:dart_console/dart_console.dart';
import 'package:embed_annotation/embed_annotation.dart';
import 'package:harhar/analyzer.dart';
import 'package:harhar/model/har.dart';

part 'harhar.g.dart';

@EmbedLiteral("../pubspec.yaml")
const pubspec = _$pubspec;

final helpText = [
  "${pubspec.name} - ${pubspec.version}",
  "",
  pubspec.description,
  "",
  "Usage: harhar <path/to/http-archive.har>"
];

void main(List<String> arguments) {
  final console = Console();

  if (arguments.isEmpty || arguments.length > 1) {
    helpText.forEach((element) {
      console.writeLine(element);
    });

    exitCode = 1;

    return;
  }

  // TODO: more output options

  final file = new File(arguments[0]);

  file.readAsString().then((value) {
    final json = jsonDecode(value);
    final har = Har.fromJson(json);

    var analyzer = Analyzer();

    final result = analyzer.analyze(har, file.path);

    final console = Console();
    console.writeLine(jsonEncode(result));

    exitCode = 0;
  }, onError: (e) {
    exitCode = 1;

    print(e);
  });
}
