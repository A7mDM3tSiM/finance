import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class Greating extends StatefulWidget {
  const Greating({
    super.key,
  });

  @override
  State<Greating> createState() => _GreatingState();
}

class _GreatingState extends State<Greating> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          child: Text(
            "Good Morning,",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: getHeight(20), fontWeight: FontWeight.w300),
          ),
        ),
        FadeInLeft(
          delay: const Duration(milliseconds: 200),
          child: Text(
            "Ahmed",
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: getHeight(22),
                  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        SizedBox(height: getHeight(10)),
        FadeIn(
          delay: const Duration(seconds: 1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Your balance is",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(14),
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  TextSpan(
                    text: " 12.856 \$",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(14),
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ]),
              ),
              SizedBox(height: getHeight(10)),
              Text(
                "By the time last month, you spent slightly higher (\$2,309)",
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: getHeight(14),
                      fontWeight: FontWeight.w300,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
