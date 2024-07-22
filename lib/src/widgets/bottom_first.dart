import 'package:flutter/material.dart';

class BottomFirst extends StatelessWidget {
  final String sunrise;
  final String sunset;

  const BottomFirst({super.key, required this.sunrise, required this.sunset});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/11.png',
              scale: 8,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                const Text(
                  'Amanhecer',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text(sunrise,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700))
              ],
            )
          ],
        ),
        Row(
          children: [
            Image.asset(
              'assets/12.png',
              scale: 8,
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                const Text(
                  'Pôr do sol',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
                Text(sunset,
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
