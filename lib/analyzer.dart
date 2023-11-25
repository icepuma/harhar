import 'package:harhar/model/analyzerResult.dart';
import 'package:harhar/model/har.dart';

class Analyzer {
  AnalyzerResult analyze(Har har, String fileName) {
    final pageCount = har.log.pages?.length ?? 0;
    final entryCount = har.log.entries.length;
    final version = har.log.version;

    // TODO: top 10 slowest requests
    // TODO: more analytics

    return AnalyzerResult(version, pageCount, entryCount);
  }
}
