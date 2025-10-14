import 'package:flutter/material.dart';

class DesignCanvas extends StatelessWidget {
  const DesignCanvas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: CustomPaint(
        painter: GridPainter(
          gridColor: Theme.of(context).brightness == Brightness.dark
              ? Colors.white24
              : Colors.black26,
        ),
        child: const Center(
          child: Text(
            'Design Canvas',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class GridPainter extends CustomPainter {
  final double gridSize;
  final Color gridColor;

  GridPainter({this.gridSize = 20.0, this.gridColor = Colors.grey});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = gridColor
      ..strokeWidth = 0.5;

    for (double i = 0; i < size.width; i += gridSize) {
      canvas.drawLine(Offset(i, 0), Offset(i, size.height), paint);
    }

    for (double i = 0; i < size.height; i += gridSize) {
      canvas.drawLine(Offset(0, i), Offset(size.width, i), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
