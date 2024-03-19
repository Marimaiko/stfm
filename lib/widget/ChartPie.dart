import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartPie extends StatelessWidget {
  final String? title1;
  final String? title2;
  final double? value1;
  final double? value2;

  ChartPie({Key? key, this.title1, this.title2, this.value1, this.value2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 800,
      // height: 800,
      child: PieChart(
        PieChartData(
          centerSpaceRadius: 0,
          sectionsSpace: 0,
          sections: [
            PieChartSectionData(
              color: Colors.blue,
              value: value1, // Primeiro valor
              title: title1,
              radius: 120,
              titleStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            PieChartSectionData(
              color: Colors.green,
              value: value2, // Segundo valor
              title: title2,
              radius: 120,
              titleStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
