import 'package:harhar/model/analyzerResult.dart';
import 'package:harhar/model/har.dart';
import 'package:harhar/model/timingResult.dart';

class Analyzer {
  num timingOrZero(num? value) {
    if (value != null) {
      // some values can be -1
      return value > 0 ? value : 0;
    }

    return 0;
  }

  AnalyzerResult analyze(Har har, String fileName) {
    final pageCount = har.log.pages?.length ?? 0;
    final entryCount = har.log.entries.length;
    final version = har.log.version;

    // TODO: more analytics

    final unsortedTimingResults = har.log.entries.map((entry) {
      final ssl = timingOrZero(entry.timings.ssl);
      final blocked = timingOrZero(entry.timings.blocked);
      final dns = timingOrZero(entry.timings.dns);
      final connect = timingOrZero(entry.timings.connect);
      final send = entry.timings.send;
      final wait = entry.timings.wait;
      final receive = entry.timings.receive;

      final total = ssl + blocked + dns + connect + send + wait + receive;

      return TimingResult(entry.request.url, total, ssl, blocked, dns, connect,
          send, wait, receive);
    }).toList();

    unsortedTimingResults.sort((a, b) => b.total.compareTo(a.total));

    final topTenSlowestTimingResults = unsortedTimingResults.take(10).toList();

    return AnalyzerResult(
        version, pageCount, entryCount, topTenSlowestTimingResults);
  }
}
