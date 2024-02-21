import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ColumnChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: SizedBox(
          width: 500,
          height: 500,
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.center,
              maxY: 100, // Valor máximo no eixo y
              titlesData: FlTitlesData(
                bottomTitles: SideTitles(
                  showTitles: true,
                  getTitles: (value) {
                    switch (value.toInt()) {
                      case 0:
                        return 'Gordura';
                      case 1:
                        return 'Músculo';
                      default:
                        return '';
                    }
                  },
                ),
              ),
              // borderData: FlBorderData(
              //   show: false,
              //   border: Border.all(color: const Color(0xff37434d), width: 1),
              // ),
              barGroups: [
                BarChartGroupData(
                  x: 0,
                  barRods: [
                    BarChartRodData(
                      y: 70,
                      borderRadius: BorderRadius.zero,
                      width: 80,
                      colors: [Colors.yellow],
                    ),
                  ],
                ),
                BarChartGroupData(x: 1, barRods: [
                  BarChartRodData(
                    y: 30,
                    borderRadius: BorderRadius.zero,
                    width: 80,
                    colors: [Colors.red],
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
