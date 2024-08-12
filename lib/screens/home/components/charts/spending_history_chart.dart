import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding/core/size_config/size_config.dart';

class SpendingHistoryChart extends StatelessWidget {
  const SpendingHistoryChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(10),
              vertical: getHeight(10),
            ),
            child: Text(
              "Spending history",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: getHeight(15),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getWidth(10),
              vertical: getHeight(5),
            ),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.green[400],
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
                      color: Colors.red[400],
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
          ),
          SizedBox(height: getHeight(20)),
          SizedBox(
            height: getHeight(210),
            child: LineChart(
              LineChartData(
                lineTouchData: LineTouchData(
                  getTouchedSpotIndicator: (barData, spotIndexes) {
                    return spotIndexes.map((spotIndex) {
                      return TouchedSpotIndicatorData(
                        FlLine(
                          color: Colors.grey[300],
                          strokeWidth: 0.5,
                        ),
                        FlDotData(
                          getDotPainter: (spot, percent, barData, index) {
                            return FlDotCirclePainter(
                              radius: 6,
                              color: Colors.white,
                              strokeWidth: 2,
                              strokeColor: Colors.white,
                            );
                          },
                        ),
                      );
                    }).toList();
                  },
                  touchTooltipData: LineTouchTooltipData(
                    getTooltipItems: (line) {
                      return List.generate(
                        line.length,
                        (i) {
                          return LineTooltipItem(
                            (line[i].y.toStringAsFixed(1)),
                            TextStyle(
                              color: i == 0 ? Colors.green : Colors.red,
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
                titlesData: FlTitlesData(
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      reservedSize: getHeight(20),
                      showTitles: true,
                      getTitlesWidget: (value, meta) {
                        final style = TextStyle(
                          color: Colors.grey[700],
                          fontSize: getHeight(10),
                        );
                        switch (value.toInt()) {
                          case 1:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('May', style: style),
                              ],
                            );
                          case 2:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Jun', style: style),
                              ],
                            );
                          case 3:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Jul', style: style),
                              ],
                            );
                          case 4:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Aug', style: style),
                              ],
                            );
                          case 5:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Sep', style: style),
                              ],
                            );
                          case 6:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Oct', style: style),
                              ],
                            );
                          case 7:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Nov', style: style),
                              ],
                            );
                          case 8:
                            return Column(
                              children: [
                                SizedBox(height: getHeight(5)),
                                Text('Dec', style: style),
                              ],
                            );
                        }
                        return const Text('');
                      },
                    ),
                  ),
                  leftTitles: const AxisTitles(sideTitles: SideTitles()),
                  rightTitles: const AxisTitles(sideTitles: SideTitles()),
                  topTitles: const AxisTitles(sideTitles: SideTitles()),
                ),
                gridData: FlGridData(
                  show: true,
                  drawHorizontalLine: false,
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: Colors.grey[100],
                    );
                  },
                ),
                borderData: FlBorderData(show: false),
                minX: 0,
                maxX: 9,
                minY: 0,
                maxY: 1200,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 200),
                      const FlSpot(1, 250),
                      const FlSpot(2, 300),
                      const FlSpot(3, 350),
                      const FlSpot(4, 600),
                      const FlSpot(5, 500),
                      const FlSpot(6, 300),
                      const FlSpot(7, 300),
                      const FlSpot(8, 350),
                      const FlSpot(9, 350),
                    ],
                    isCurved: true,
                    barWidth: 0,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff3D639D).withOpacity(0.5),
                          const Color(0xFF343D63).withOpacity(0.5),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                  LineChartBarData(
                    spots: [
                      const FlSpot(0, 300),
                      const FlSpot(1, 320),
                      const FlSpot(2, 450),
                      const FlSpot(3, 660),
                      const FlSpot(4, 800),
                      const FlSpot(5, 750),
                      const FlSpot(6, 500),
                      const FlSpot(7, 500),
                      const FlSpot(8, 600),
                      const FlSpot(9, 600),
                    ],
                    isCurved: true,
                    barWidth: 0,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xff3D639D).withOpacity(0.8),
                          const Color(0xFF343D63).withOpacity(0.8),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    dotData: const FlDotData(show: false),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getHeight(15)),
        ],
      ),
    );
  }
}
