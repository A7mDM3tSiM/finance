import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class Welcome extends StatelessWidget {
  const Welcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning,",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: getHeight(25),
                color: Colors.white,
                fontWeight: FontWeight.w300),
          ),
          Text(
            "Ahmed",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: getHeight(25),
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}
