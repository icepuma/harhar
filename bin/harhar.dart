import 'dart:convert';
import 'dart:io';

import 'package:dart_console/dart_console.dart';
import 'package:harhar/analyzer.dart';
import 'package:harhar/model/har.dart';

void main(List<String> arguments) {
  // TODO: better argument parsing
  // TODO: help text
  // TODO: more output options

  final file = new File(arguments[0]);

  file.readAsString().then((value) {
    final json = jsonDecode(value);
    final har = Har.fromJson(json);

    var analyzer = Analyzer();

    final result = analyzer.analyze(har, file.path);

    final console = Console();
    console.writeLine(jsonEncode(result));
  }, onError: (e) => print(e));
}
