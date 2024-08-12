import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:on_boarding/core/size_config/size_config.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getHeight(400),
          child: Stack(
            children: [
              Positioned(
                left: 60,
                top: 120,
                child: FadeInLeft(
                  child: const Getstartedcontainer(
                    value: "2345",
                    type: "holidays",
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 170,
                child: FadeIn(
                  child: const Getstartedcontainer(
                    value: "3002",
                    type: "bills",
                  ),
                ),
              ),
              Positioned(
                left: 220,
                top: 140,
                child: FadeInRight(
                  child: const Getstartedcontainer(
                    value: "635",
                    type: "shopping",
                  ),
                ),
              ),
              Positioned(
                left: 200,
                top: 220,
                child: FadeInUp(
                  child: const Getstartedcontainer(
                    value: "1076",
                    type: "entertainement",
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 70,
                child: FadeInDown(
                  child: const Getstartedcontainer(
                    value: "500",
                    type: "grocerie",
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
          child: Text(
            "View all your financial information in one place. "
            "Understand your spending habits, search your transactions"
            " and effectively manage your finances.",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white, fontSize: getHeight(15)),
          ),
        )
      ],
    );
  }
}

class Getstartedcontainer extends StatelessWidget {
  final String value;
  final String type;

  const Getstartedcontainer({
    super.key,
    required this.value,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(120),
      width: getHeight(120),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey[400]!,
            blurRadius: 7,
            blurStyle: BlurStyle.solid,
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Icon(
              Icons.attach_money_outlined,
              color: Colors.grey[100]!,
              size: getHeight(100),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "$value \$",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.green[400],
                      fontWeight: FontWeight.bold,
                      fontSize: getHeight(25)),
                ),
                Text(type),
                SizedBox(height: getHeight(15)),
                Text(
                  "over the last 30 days",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.grey, fontSize: getHeight(7)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
