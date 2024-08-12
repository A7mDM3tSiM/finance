import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        "Skip",
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(fontSize: getHeight(15)),
      ),
    );
  }
}
