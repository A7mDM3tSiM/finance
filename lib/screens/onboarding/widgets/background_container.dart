import 'package:flutter/material.dart';

class BackgroundContainer extends StatefulWidget {
  final double height;
  final double width;
  final double xStart;
  final double xEnd;
  final double yStart;
  final double yEnd;
  final bool hide;

  const BackgroundContainer({
    super.key,
    required this.height,
    required this.width,
    required this.xStart,
    required this.xEnd,
    required this.yStart,
    required this.yEnd,
    required this.hide,
  });

  @override
  State<BackgroundContainer> createState() => _BackgroundContainerState();
}

class _BackgroundContainerState extends State<BackgroundContainer> {
  bool animate = false;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 100));
      setState(() {
        animate = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 500),
      left: !animate || widget.hide ? widget.xStart : widget.xEnd,
      bottom: !animate || widget.hide ? widget.yStart : widget.yEnd,
      child: Transform.rotate(
        angle: 0.8, // Adjust the angle as needed (radians)
        child: Container(
          width: widget.height,
          height: widget.width,
          decoration: BoxDecoration(
            color: const Color(0xfff2f2f2).withOpacity(0.6),
            borderRadius: BorderRadius.circular(360),
          ),
        ),
      ),
    );
  }
}
