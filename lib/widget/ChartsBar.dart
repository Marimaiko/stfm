import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gráfico de Barras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.center,
            maxY: 100,
            // barTouchData: BarTouchData(
            //   touchTooltipData: BarTouchTooltipData(
            //     tooltipBgColor: Colors.blueGrey,
            //     getTooltipItem: (_a, _b, _c, _d) => null,
            //   ),
            // touchCallback: (response) {
            //   // Aqui você pode lidar com toques no gráfico, se desejar
            // },
            // ),
            titlesData: FlTitlesData(
              leftTitles: SideTitles(showTitles: true),
              bottomTitles: SideTitles(showTitles: true),
            ),
            borderData: FlBorderData(
              show: true,
              border: Border.all(color: const Color(0xff37434d), width: 1),
            ),
            barGroups: [
              // BarChartGroupData(
              //   x: 0,
              //   barRods: [
              //     BarChartRodData(
              //       y: 30,
              //       colors: [Colors.blue],
              //     ),
              //   ],
              //   showingTooltipIndicators: [0],
              // ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    y: 25,
                    colors: [Colors.green],
                  ),
                ],
                // showingTooltipIndicators: [0],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    y: 70,
                    colors: [Colors.yellow],
                  ),
                ],
                // showingTooltipIndicators: [0],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// void main() => runApp(MaterialApp(home: BarChartSample()));
