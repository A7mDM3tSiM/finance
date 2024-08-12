import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class TransactionWidget extends StatelessWidget {
  final String label;
  final String subtitle;
  final String amount;
  final String date;

  const TransactionWidget({
    super.key,
    required this.label,
    required this.subtitle,
    required this.amount,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getHeight(15)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(getHeight(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[200]!,
            blurRadius: 10,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ListTile(
        minVerticalPadding: getHeight(15),
        title: Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: getHeight(16),
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        subtitle: Text(
          subtitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: getHeight(13),
                color: Colors.grey[500],
              ),
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              amount,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: getHeight(13),
                  ),
            ),
            SizedBox(height: getHeight(5)),
            Text(
              date,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: getHeight(13),
                    color: Colors.grey[500],
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
