import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/size_config/size_config.dart';

class SpendingActivityChart extends StatelessWidget {
  const SpendingActivityChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(10), vertical: getHeight(10)),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300]!,
            blurRadius: 20,
            spreadRadius: 5,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Spending Activity",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: getHeight(10)),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Theme.of(context).colorScheme.primary,
                    size: getHeight(12),
                  ),
                  SizedBox(width: getWidth(5)),
                  Text(
                    "Income",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(13),
                        ),
                  ),
                ],
              ),
              SizedBox(width: getWidth(40)),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    color: Theme.of(context).colorScheme.secondary,
                    size: getHeight(12),
                  ),
                  SizedBox(width: getWidth(5)),
                  Text(
                    "Income",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(13),
                        ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: getHeight(20)),
          SizedBox(
            width: double.infinity,
            height: getHeight(200),
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (line) {
                      return List.generate(
                        line.length,
                        (i) {
                          return LineTooltipItem(
                            (line[i].y.toStringAsFixed(1)),
                            TextStyle(
                              color: i == 1
                                  ? Theme.of(context).colorScheme.primary
                                  : Theme.of(context).colorScheme.secondary,
                              fontWeight: FontWeight.w500,
                              fontSize: getHeight(12),
                            ),
                          );
                        },
                      );
                    },
                    getTooltipColor: (group) {
                      return Colors.white;
                    },
                  ),
                ),
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 200),
                      const FlSpot(1, 300),
                      const FlSpot(2, 250),
                      const FlSpot(3, 400),
                      const FlSpot(4, 380),
                      const FlSpot(5, 420),
                    ],
                    isCurved: true,
                    color: Theme.of(context).colorScheme.primary,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 300),
                      const FlSpot(1, 400),
                      const FlSpot(2, 350),
                      const FlSpot(3, 300),
                      const FlSpot(4, 420),
                      const FlSpot(5, 370),
                    ],
                    isCurved: true,
                    color: Theme.of(context).colorScheme.secondary,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(show: false),
                  ),
                ],
                titlesData: FlTitlesData(
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: getWidth(30),
                      getTitlesWidget: (value, meta) => Text(
                        value.toStringAsFixed(0),
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: getHeight(12),
                              color: Colors.grey,
                            ),
                      ),
                    )),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, _) {
                          String text = "";
                          switch (value) {
                            case 0:
                              text = 'Jan';
                            case 1:
                              text = 'Feb';
                            case 2:
                              text = 'Mar';
                            case 3:
                              text = 'Apr';
                            case 4:
                              text = 'May';
                            case 5:
                              text = 'Jun';
                          }

                          return Text(
                            text,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  fontSize: getHeight(12),
                                  color: Colors.grey,
                                ),
                          );
                        },
                      ),
                    )),
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: true,
                  getDrawingHorizontalLine: (v) => FlLine(
                    color: Colors.grey[200]!,
                    strokeWidth: 1,
                  ),
                  drawVerticalLine: false,
                ),
                borderData: FlBorderData(show: false),
                minX: -0.2,
                maxX: 5.2,
                minY: 0,
                maxY: 800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
