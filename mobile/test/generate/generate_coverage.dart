import 'dart:io';
import 'package:path/path.dart' as path;

import 'test_coverage.dart';

Future<void> main() async {
  final Directory dir = Directory('${Directory.current.path}${path.separator}test${path.separator}coverage');
  if (dir.existsSync()) {
    dir.delete(recursive: true);
  }

  final String lcov = '${dir.path}${path.separator}lcov.info';
  final File lcovFile = File(lcov);

  await runAndDump('flutter', <String>['test', '--coverage', '--coverage-path=$lcov']);
  await Future<void>.delayed(const Duration(seconds: 1));
  await runAndDump('remove_from_coverage', <String>['-f', lcov, '-r', '${path.separator}actions${path.separator}']);
  await runAndDump('remove_from_coverage', <String>['-f', lcov, '-r', '${path.separator}models${path.separator}']);
  await runAndDump('remove_from_coverage', <String>['-f', lcov, '-r', '${path.separator}generated${path.separator}']);
  await runAndDump('genhtml', <String>['-o', dir.path, lcov]);
  await runAndDump('open', <String>['${dir.path}${path.separator}index.html']);

  final double lineCoverage = calculateLineCoverage(lcovFile);
  generateBadge(Directory.current, lineCoverage);
}

Future<void> runAndDump(String executable, List<String> arguments) async {
  final Process process = await Process.start(executable, arguments);
  process.stdout.listen(stdout.add);
  process.stderr.listen(stderr.add);
  await process.exitCode;
}
