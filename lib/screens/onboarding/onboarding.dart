import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:on_boarding/core/size_config/size_config.dart';
import 'package:on_boarding/screens/home/home_screen.dart';
import 'package:on_boarding/screens/onboarding/widgets/get_started.dart';
import 'package:on_boarding/utils/constants/steps.dart';

import 'widgets/background_container.dart';
import 'widgets/dots.dart';
import 'widgets/next_button.dart';
import 'widgets/onboarding_step.dart';
import 'widgets/skip_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final ctrl = PageController();
  int currentDot = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            colors: currentDot == 3
                ? [
                    const Color.fromARGB(255, 75, 106, 153),
                    const Color(0xff3D639D),
                  ]
                : [Colors.white, Colors.white],
          ),
        ),
        child: Stack(
          children: [
            BackgroundContainer(
              height: getHeight(144),
              width: getWidth(348),
              xStart: -40 - 200,
              yStart: -120 - 200,
              xEnd: 120,
              yEnd: 40,
              hide: currentDot == 3,
            ),
            BackgroundContainer(
              height: getHeight(200),
              width: getWidth(600),
              xStart: 120 + 500,
              yStart: 300 + 500,
              xEnd: 120,
              yEnd: 300,
              hide: currentDot == 3,
            ),
            Column(
              children: [
                SizedBox(height: getHeight(60)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                  child: const SkipButton(),
                ),
                SizedBox(height: getHeight(15)),
                SizedBox(
                  height: getHeight(550),
                  child: PageView.builder(
                    controller: ctrl,
                    onPageChanged: (value) {
                      setState(() => currentDot = value);
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: steps.length + 1,
                    itemBuilder: (_, index) {
                      if (index == 3) {
                        return const GetStarted();
                      }
                      return OnboardingStep(
                        image: steps[index].image,
                        title: steps[index].title,
                        subTitle: steps[index].subTitle,
                      );
                    },
                  ),
                ),
              ],
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: getHeight(80),
              left: currentDot == 3 ? -200 : getWidth(20),
              child: Dots(currentDot: currentDot),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: getHeight(60),
              right: currentDot == 3 ? -200 : getWidth(20),
              child: GestureDetector(
                onTap: () async {
                  await ctrl.animateToPage(
                    (ctrl.page! + 1).toInt(),
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                child: const NextButton(),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 500),
              bottom: currentDot == 3 ? getHeight(80) : -200,
              left: SizeConfig.screenWidth / 4,
              child: GestureDetector(
                onTap: () => Get.to(
                  () => const HomeScreen(),
                  transition: Transition.fade,
                ),
                child: Container(
                  height: getHeight(50),
                  width: SizeConfig.screenWidth / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: getHeight(18),
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
