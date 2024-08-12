import 'package:flutter/material.dart';
import 'package:on_boarding/core/size_config/size_config.dart';

class CreditCard extends StatelessWidget {
  final String cardType;
  final String cardNumber;
  final double balance;
  final int index;

  const CreditCard({
    super.key,
    required this.cardType,
    required this.cardNumber,
    required this.balance,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
      margin: EdgeInsets.only(left: getWidth(10)),
      height: getHeight(150),
      width: getWidth(150),
      decoration: BoxDecoration(
        color: index % 2 == 0
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/$cardType.png',
                width: getHeight(28),
                height: getHeight(28),
              ),
            ],
          ),
          SizedBox(height: getHeight(15)),
          Text(
            '**** ${cardNumber.substring(cardNumber.length - 4)}',
            style: TextStyle(
              color: Colors.white,
              fontSize: getHeight(17),
            ),
          ),
          SizedBox(height: getHeight(15)),
          Text(
            '\$${balance.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.white,
              fontSize: getHeight(22),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
