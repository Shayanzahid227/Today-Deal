import 'package:flutter/material.dart';

class CurvedRedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300, // Adjust height as needed
      child: CustomPaint(
        painter: _CurvePainter(),
      ),
    );
  }
}

class _CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red // Set the color to red
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(0, size.height * 0.7); // Start point on the left
    path.quadraticBezierTo(
      size.width / 2, // Control point x
      size.height * 1, // Control point y (adjust to control the curve)
      size.width, // End point x
      size.height * 0.7, // End point y
    );
    path.lineTo(size.width, 0); // Line to the top right
    path.lineTo(0, 0); // Line to the top left
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false; // No need to repaint unless the path changes
  }
}
