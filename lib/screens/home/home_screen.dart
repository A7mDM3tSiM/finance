import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../core/size_config/size_config.dart';
import 'components/charts/spending_activity_chrt.dart';
import 'components/charts/spending_analysis.dart';
import 'components/charts/yesterday_chart.dart';
import 'components/greating.dart';
import 'components/charts/spending_history_chart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        title: Text(
          "Home",
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: getHeight(16),
                fontWeight: FontWeight.bold,
              ),
        ),
        leading: const SizedBox(),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          SizedBox(width: getWidth(20)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getHeight(20)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: const Greating(),
            ),
            SizedBox(height: getHeight(15)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: FadeInUp(
                  delay: const Duration(milliseconds: 1500),
                  child: const SpendingHistoryChart()),
            ),
            SizedBox(height: getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: FadeInUp(
                delay: const Duration(milliseconds: 2000),
                child: const SpendingActivityChart(),
              ),
            ),
            SizedBox(height: getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: FadeInUp(child: const SpendingAnalysis()),
            ),
            SizedBox(height: getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              child: FadeIn(child: const YesterdayChart()),
            ),
            SizedBox(height: getHeight(30)),
          ],
        ),
      ),
    );
  }
}
