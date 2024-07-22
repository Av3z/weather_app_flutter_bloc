import 'dart:ui';
import 'package:flutter/material.dart';

class BackgroundDecoration extends StatelessWidget {
  const BackgroundDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: const AlignmentDirectional(3, -0.3),
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-3, -0.3),
          child: Container(
            width: 300,
            height: 300,
            decoration: const BoxDecoration(
                color: Colors.deepPurple, shape: BoxShape.circle),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(0, -1.4),
          child: Container(
            width: 600,
            height: 300,
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
          child: Container(
            decoration: const BoxDecoration(color: Colors.transparent),
          ),
        ),
      ],
    );
  }
}
