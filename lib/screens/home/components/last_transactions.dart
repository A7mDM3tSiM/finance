import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';
import 'transaction_widget.dart';

class LastTransactions extends StatelessWidget {
  const LastTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Last Transactons",
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold, fontSize: getHeight(16)),
        ),
        SizedBox(height: getHeight(10)),
        ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TransactionWidget(
              label: "Groceries",
              subtitle: "Food",
              amount: "\$ 50",
              date: "Augest 1, 2024 10:00 AM",
            ),
            TransactionWidget(
              label: "Gas",
              subtitle: "Transportation",
              amount: "\$ 30",
              date: "Augest 2, 2024 2:30 PM",
            ),
            TransactionWidget(
              label: "Restaurant",
              subtitle: "Food",
              amount: "\$ 80",
              date: "Augest 3, 2024 7:15 PM",
            ),
            TransactionWidget(
              label: "Movie Tickets",
              subtitle: "Entertainment",
              amount: "\$ 25",
              date: "Augest 4, 2024 6:45 PM",
            ),
            TransactionWidget(
              label: "Shopping",
              subtitle: "Retail",
              amount: "\$ 100",
              date: "Augest 5, 2024 11:30 AM",
            ),
          ],
        ),
      ],
    );
  }
}
