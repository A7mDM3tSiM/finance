import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeight(50),
      width: getWidth(150),
      padding: EdgeInsets.symmetric(horizontal: getWidth(15)),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Next",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white, fontSize: getHeight(16)),
          ),
          Container(
            padding: EdgeInsets.only(left: getWidth(10)),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(width: 0.5, color: Colors.white),
              ),
            ),
            child: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
