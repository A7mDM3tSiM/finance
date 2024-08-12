import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/size_config/size_config.dart';

class YesterdayChart extends StatelessWidget {
  const YesterdayChart({super.key});

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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Yesterday",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  height: 60,
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
                                    color:
                                        Theme.of(context).colorScheme.secondary,
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
                        getTouchedSpotIndicator: (barData, spotIndexes) {
                          return spotIndexes.map((spotIndex) {
                            return TouchedSpotIndicatorData(
                              const FlLine(strokeWidth: 0),
                              FlDotData(
                                getDotPainter: (spot, percent, barData, index) {
                                  return FlDotCirclePainter(
                                    radius: 6,
                                    color: Colors.white,
                                    strokeWidth: 2,
                                  );
                                },
                              ),
                            );
                          }).toList();
                        },
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 1),
                            const FlSpot(1, 3),
                            const FlSpot(2, 1.5),
                            const FlSpot(3, 2.8),
                            const FlSpot(4, 2.5),
                            const FlSpot(5, 1.2),
                            const FlSpot(6, 3.2),
                            const FlSpot(7, 2.2),
                          ],
                          isCurved: true,
                          color: Theme.of(context).colorScheme.secondary,
                          dotData: const FlDotData(show: false),
                          belowBarData: BarAreaData(show: false),
                          isStrokeCapRound: true,
                          barWidth: 3,
                        ),
                      ],
                      titlesData: const FlTitlesData(show: false),
                      gridData: const FlGridData(show: false),
                      borderData: FlBorderData(show: false),
                      minX: 0,
                      maxX: 7,
                      minY: 0,
                      maxY: 4,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "FOOD",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  Text(
                    "\$567",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.grey[700],
                    ),
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Views ",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: getHeight(15),
                                    color: Colors.grey,
                                  ),
                        ),
                        TextSpan(
                          text: "34 %",
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontSize: getHeight(15),
                                    color: Colors.green,
                                  ),
                        ),
                        const WidgetSpan(
                          child: Icon(
                            Icons.keyboard_arrow_up,
                            size: 20,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
