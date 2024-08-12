import 'package:flutter/material.dart';

import '../../../core/size_config/size_config.dart';

class HomeBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = const Color.fromARGB(255, 54, 65, 114);

    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(getHeight(0), getHeight(225));
    path.arcToPoint(Offset(SizeConfig.screenWidth, getHeight(225)),
        radius: const Radius.circular(600), clockwise: false);
    path.lineTo(SizeConfig.screenWidth, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
