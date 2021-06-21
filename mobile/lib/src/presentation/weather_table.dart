import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:mobile/src/models/index.dart';
import 'package:mobile/src/presentation/theme.dart';

class WeatherTable extends StatelessWidget {
  const WeatherTable({
    Key? key,
    required this.locationWeather,
  }) : super(key: key);

  final LocationWeather locationWeather;

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(3),
        1: FlexColumnWidth(5),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
      },
      children: List<TableRow>.generate(
        locationWeather.weather.length - 1,
        (int index) {
          final int _index = index + 1;
          final Weather dayWeather = locationWeather.weather[_index];
          return TableRow(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 0.1,
                  color: AppColors.second,
                ),
              ),
            ),
            children: <Widget>[
              Text(
                '${DateFormat('EEEE').format(dayWeather.applicableDate)}',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 3),
                child: SvgPicture.asset(
                  'res/svg/${dayWeather.weatherStateAbbreviation}.svg',
                  height: 32,
                ),
              ),
              Text(
                '${dayWeather.maxTemp.round()}',
                style: const TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                ),
              ),
              Text(
                '${dayWeather.minTemp.round()}',
                style: TextStyle(
                  color: AppColors.primary.withOpacity(0.5),
                  fontSize: 16,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
