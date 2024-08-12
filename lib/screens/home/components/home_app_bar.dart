import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: getWidth(20)),
          Text(
            "Home",
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: Colors.white, fontSize: getHeight(17)),
          ),
          const Icon(
            Icons.search_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
