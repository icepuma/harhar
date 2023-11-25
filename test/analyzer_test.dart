import 'package:harhar/analyzer.dart';
import 'package:harhar/model/creator.dart';
import 'package:harhar/model/har.dart';
import 'package:harhar/model/log.dart';
import 'package:test/test.dart';

void main() {
  final analyzer = Analyzer();

  test('analyzer works', () {
    final har =
        Har(Log("1.2", Creator("fkbr", "0.1", null), null, null, [], null));

    final result = analyzer.analyze(har, "fkbr.har");

    expect(result.harVersion, "1.2");
    expect(result.pageCount, 0);
    expect(result.entryCount, 0);
  });
}
