import 'package:args/args.dart';

void main(List<String> arguments) {
  final parser = ArgParser()..addFlag('verbose', negatable: false, abbr: 'v');

  ArgResults argResults = parser.parse(arguments);

  print(argResults.toString());
  print(arguments.toString());
}
