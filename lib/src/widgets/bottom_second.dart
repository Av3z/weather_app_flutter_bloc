import 'package:flutter/material.dart';

class BottomSecond extends StatelessWidget {
  final String tempMax;
  final String tempMin;

  const BottomSecond({super.key, required this.tempMax, required this.tempMin});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/13.png',
              scale: 8,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                const Text(
                  'Temp Max',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text('$tempMax°C',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))
              ],
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/14.png',
              scale: 8,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                const Text(
                  'Temp Min',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text('$tempMin°C',
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))
              ],
            )
          ],
        )
      ],
    );
  }
}
