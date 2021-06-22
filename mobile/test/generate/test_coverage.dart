/*
// Copyright (c) 2018, Anatoly Pulyaevskiy. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
// https://github.com/pulyaevskiy/test-coverage/blob/master/LICENSE or here
// Copyright (c) 2018, Anatoly Pulyaevskiy.
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import 'dart:io';

import 'package:lcov/lcov.dart';
import 'package:path/path.dart' as path;

// ignore_for_file: invariant_booleans

/// An exception caused by a parsing error.
class LcovException extends FormatException {

  /// Creates a new LCOV exception.
  LcovException(String message, [String? source, int? offset]): super(message, source, offset);
}

/// Represents a trace file, that is a coverage report.
class Report {

  /// Creates a new report.
  Report([this.testName = '', Iterable<Record> records]): records = List<Record>.from(records ?? const <Record>[]);

  /// Parses the specified [coverage] data in [LCOV](http://ltp.sourceforge.net/coverage/lcov.php) format.
  /// Throws a [LcovException] if a parsing error occurred.
  Report.fromCoverage(String coverage): records = <Record>[], testName = '' {
    try {
      Record record;
      for (var line in coverage.split(RegExp(r'\r?\n'))) {
        line = line.trim();
        if (line.isEmpty) continue;

        var parts = line.split(':');
        if (parts.length < 2 && parts.first != Token.endOfRecord) throw Exception('Invalid token format');

        var data = parts.skip(1).join(':').split(',');
        switch (parts.first) {
          case Token.testName:
            testName = data.first;
            break;

          case Token.sourceFile:
            record = Record(data.first)
              ..branches = BranchCoverage()
              ..functions = FunctionCoverage()
              ..lines = LineCoverage();
            break;

          case Token.functionName:
            if (data.length < 2) throw Exception('Invalid function name');
            record.functions.data.add(FunctionData(data[1], int.parse(data.first, radix: 10)));
            break;

          case Token.functionData:
            if (data.length < 2) throw Exception('Invalid function data');
            record.functions.data.firstWhere((item) => item.functionName == data[1])
                .executionCount = int.parse(data.first, radix: 10);
            break;

          case Token.functionsFound:
            record.functions.found = int.parse(data.first, radix: 10);
            break;

          case Token.functionsHit:
            record.functions.hit = int.parse(data.first, radix: 10);
            break;

          case Token.branchData:
            if (data.length < 4) throw Exception('Invalid branch data');
            record.branches.data.add(BranchData(
                int.parse(data[0], radix: 10),
                int.parse(data[1], radix: 10),
                int.parse(data[2], radix: 10),
                taken: data[3] == '-' ? 0 : int.parse(data[3], radix: 10)
            ));
            break;

          case Token.branchesFound:
            record.branches.found = int.parse(data.first, radix: 10);
            break;

          case Token.branchesHit:
            record.branches.hit = int.parse(data.first, radix: 10);
            break;

          case Token.lineData:
            if (data.length < 2) throw Exception('Invalid line data');
            record.lines.data.add(LineData(
                int.parse(data[0], radix: 10),
                executionCount: int.parse(data[1], radix: 10),
                checksum: data.length >= 3 ? data[2] : ''
            ));
            break;

          case Token.linesFound:
            record.lines.found = int.parse(data.first, radix: 10);
            break;

          case Token.linesHit:
            record.lines.hit = int.parse(data.first, radix: 10);
            break;

          case Token.endOfRecord:
            records.add(record);
            break;
        }
      }
    }

    on Exception {
      throw LcovException('The coverage data has an invalid LCOV format', coverage);
    }

    if (records.isEmpty) throw LcovException('The coverage data is empty', coverage);
  }

  /// Creates a new record from the specified [map] in JSON format.
  Report.fromJson(Map<String, dynamic> map):
        records = map['records'] is List<Map<String, dynamic>> ? map['records'].map((item) => Record.fromJson(item)).cast<Record>().toList() : <Record>[],
        testName = map['testName'] is String ? map['testName'] : '';

  /// The record list.
  final List<Record> records;

  /// The test name.
  String testName;

  /// Converts this object to a map in JSON format.
  Map<String, dynamic> toJson() => <String, dynamic>{
    'testName': testName,
    'records': records.map((item) => item.toJson()).toList()
  };

  /// Returns a string representation of this object.
  @override
  String toString() {
    var buffer = StringBuffer();
    if (testName.isNotEmpty) {
      buffer.write('${Token.testName}:$testName');
      if (records.isNotEmpty) buffer.writeln();
    }

    buffer.writeAll(records, '\n');
    return buffer.toString();
  }
}

double calculateLineCoverage(File lcovReport) {
  final report = Report.fromCoverage(lcovReport.readAsStringSync());
  var totalLines = 0;
  var hitLines = 0;
  for (final rec in report.records) {
    for (final line in rec.lines.data) {
      totalLines++;
      hitLines += (line.executionCount > 0) ? 1 : 0;
    }
  }
  return hitLines / totalLines;
}

void generateBadge(Directory packageRoot, double lineCoverage) {
  const leftWidth = 59;
  final value = '${(lineCoverage * 100).floor()}%';
  final color = _color(lineCoverage);
  final metrics = _BadgeMetrics.forPercentage(lineCoverage);
  final rightWidth = metrics.width - leftWidth;
  final content = _kBadgeTemplate
      .replaceAll('{width}', metrics.width.toString())
      .replaceAll('{rightWidth}', rightWidth.toString())
      .replaceAll('{rightX}', metrics.rightX.toString())
      .replaceAll('{rightLength}', metrics.rightLength.toString())
      .replaceAll('{color}', color.toString())
      .replaceAll('{value}', value.toString());
  File(path.join(packageRoot.path, 'coverage_badge.svg')).writeAsStringSync(content);
}

class _BadgeMetrics {
  final int width;
  final int rightX;
  final int rightLength;

  _BadgeMetrics({required this.width, required this.rightX, required this.rightLength});

  factory _BadgeMetrics.forPercentage(double value) {
    final pct = (value * 100).floor();
    if (pct.toString().length == 1) {
      return _BadgeMetrics(
        width: 88,
        rightX: 725,
        rightLength: 190,
      );
    } else if (pct.toString().length == 2) {
      return _BadgeMetrics(
        width: 94,
        rightX: 755,
        rightLength: 250,
      );
    } else {
      return _BadgeMetrics(
        width: 102,
        rightX: 795,
        rightLength: 330,
      );
    }
  }
}

String _color(double percentage) {
  final map = {
    0.0: _Color(0xE0, 0x5D, 0x44),
    0.5: _Color(0xE0, 0x5D, 0x44),
    0.6: _Color(0xDF, 0xB3, 0x17),
    0.9: _Color(0x97, 0xCA, 0x00),
    1.0: _Color(0x44, 0xCC, 0x11),
  };
  late double lower;
  late double upper;
  for (final key in map.keys) {
    if (percentage < key) {
      upper = key;
      break;
    }
    if (key < 1.0) lower = key;
  }
  upper ??= 1.0;
  final lowerColor = map[lower];
  final upperColor = map[upper];
  final range = upper - lower;
  final rangePct = (percentage - lower) / range;
  final pctLower = 1 - rangePct;
  final pctUpper = rangePct;
  final r = (lowerColor!.r * pctLower + upperColor!.r * pctUpper).floor();
  final g = (lowerColor.g * pctLower + upperColor.g * pctUpper).floor();
  final b = (lowerColor.b * pctLower + upperColor.b * pctUpper).floor();
  final color = _Color(r, g, b);
  return color.toString();
}

class _Color {
  final int r, g, b;

  _Color(this.r, this.g, this.b);

  @override
  String toString() => '#${((1 << 24) + (r << 16) + (g << 8) + b).toRadixString(16).substring(1)}';
}

const _kBadgeTemplate = '''
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="{width}" height="20">
  <linearGradient id="b" x2="0" y2="100%">
    <stop offset="0" stop-color="#bbb" stop-opacity=".1"/>
    <stop offset="1" stop-opacity=".1"/>
  </linearGradient>
  <clipPath id="a">
    <rect width="{width}" height="20" rx="3" fill="#fff"/>
  </clipPath>
  <g clip-path="url(#a)">
    <path fill="#555" d="M0 0h59v20H0z"/>
    <path fill="{color}" d="M59 0h{rightWidth}v20H59z"/>
    <path fill="url(#b)" d="M0 0h{width}v20H0z"/>
  </g>
  <g fill="#fff" text-anchor="middle" font-family="DejaVu Sans,Verdana,Geneva,sans-serif" font-size="110">
    <text x="305" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="490">coverage</text>
    <text x="305" y="140" transform="scale(.1)" textLength="490">coverage</text>
    <text x="{rightX}" y="150" fill="#010101" fill-opacity=".3" transform="scale(.1)" textLength="{rightLength}">{value}</text>
    <text x="{rightX}" y="140" transform="scale(.1)" textLength="{rightLength}">{value}</text>
  </g>
</svg>
''';
*/
