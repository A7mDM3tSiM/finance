import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/size_config/size_config.dart';

class SpendingAnalysis extends StatelessWidget {
  const SpendingAnalysis({super.key});

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
            "Spending Analysis",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: getHeight(16),
                  fontWeight: FontWeight.bold,
                ),
          ),
          SizedBox(height: getHeight(10)),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shopping",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: getHeight(14),
                              color: Colors.black,
                            ),
                      ),
                      Text(
                        "\$ 1,500",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: getHeight(25),
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: getHeight(10)),
                      Text(
                        "Totally spent last month",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: getHeight(11),
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getHeight(70),
                    width: getWidth(170),
                    child: BarChart(
                      BarChartData(
                        gridData: const FlGridData(show: false),
                        alignment: BarChartAlignment.spaceAround,
                        maxY: 20,
                        barTouchData: BarTouchData(enabled: false),
                        titlesData: const FlTitlesData(show: false),
                        borderData: FlBorderData(show: false),
                        barGroups: [
                          makeGroupData(context, 0, 12, 8),
                          makeGroupData(context, 1, 10, 14),
                          makeGroupData(context, 2, 14, 15),
                          makeGroupData(context, 3, 15, 10),
                          makeGroupData(context, 4, 13, 14),
                          makeGroupData(context, 5, 10, 12),
                          makeGroupData(context, 6, 12, 9),
                          makeGroupData(context, 7, 14, 13),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(10)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Last update 2 hours ago",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(15),
                          color: Colors.grey,
                        ),
                  ),
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
                          text: "63 %",
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
              )
            ],
          ),
        ],
      ),
    );
  }

  BarChartGroupData makeGroupData(
      BuildContext context, int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: Theme.of(context).colorScheme.secondary.withOpacity(0.7),
          width: getWidth(8),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        BarChartRodData(
          toY: y2,
          color: Theme.of(context).colorScheme.secondary,
          width: getWidth(8),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
      ],
    );
  }
}
