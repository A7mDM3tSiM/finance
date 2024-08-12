import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class OnboardingStep extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OnboardingStep({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FadeIn(
          delay: const Duration(milliseconds: 0),
          child: Image.asset(image),
        ),
        Column(
          children: [
            FadeInRight(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(30),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                ),
              ),
            ),
            SizedBox(height: getHeight(15)),
            FadeInLeft(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: getHeight(16),
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
