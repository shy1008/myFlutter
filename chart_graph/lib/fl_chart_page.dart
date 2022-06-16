import 'dart:html';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FiChartPage extends StatefulWidget {
  const FiChartPage({Key? key}) : super(key: key);

  @override
  State<FiChartPage> createState() => _FiChartPageState();
}

class _FiChartPageState extends State<FiChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 40),
        width: double.infinity,
        height: 300,
        child: LineChart(
          LineChartData(
              borderData: FlBorderData(
                  show: true,
                  border: const Border(
                    top: BorderSide(color: Colors.transparent),
                    right: BorderSide(color: Colors.transparent),
                    bottom: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black)
                  )
              ),
              titlesData: FlTitlesData(
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
                ),
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false)
                )
              ),
              lineBarsData: [LineChartBarData(spots: [
              const FlSpot(0, 1),
              const FlSpot(1, 3),
              const FlSpot(2, 10),
              const FlSpot(3, 7),
              const FlSpot(4, 12),
              const FlSpot(5, 13),
              const FlSpot(6, 17),
              const FlSpot(7, 15),
              const FlSpot(8, 20)
            ])
          ]),
        ),
      ),
    );
  }
}
