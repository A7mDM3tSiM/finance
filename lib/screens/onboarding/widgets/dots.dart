import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class Dots extends StatelessWidget {
  final int currentDot;
  const Dots({
    super.key,
    required this.currentDot,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(
          4,
          (i) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: i == currentDot ? getWidth(30) : getWidth(10),
              height: 3,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: i == currentDot
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.secondary,
              ),
            );
          },
        )
      ],
    );
  }
}
