import 'dart:convert';
import 'dart:io';

import 'package:harhar/model/har.dart';

void main(List<String> arguments) {
  final file = new File(arguments[0]);

  file.readAsString().then((value) {
    final json = jsonDecode(value);
    final har = Har.fromJson(json);

    print(har.toJson());
  }, onError: (e) => print(e));
}
