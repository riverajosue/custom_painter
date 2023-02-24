import 'package:flutter/material.dart';

class SquareHeader extends StatelessWidget {
  const SquareHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xFF615AAB),
    );
  }
}

/// bordes redondeados
class RoundedEdgesHeader extends StatelessWidget {
  const RoundedEdgesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
          color: Color(0xFF615AAB),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70))),
    );
  }
}

class DiagonalHeader extends StatelessWidget {
  const DiagonalHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFF615AAB),
      child: CustomPaint(
        painter: _diagonalPainterHeader(),
      ),
    );
  }
}

class _diagonalPainterHeader extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint

    /// Lapiz
    final paint = Paint();

    ///Propiedades

    paint.color = Colors.blueGrey;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    ///dibujar con el path y el lapiz
    final path = new Path();

    path.moveTo(0, size.height * 0.5);
    path.lineTo(size.width, size.height * 0.45);
    path.lineTo(size.width, 0);
    path.lineTo(0,0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
