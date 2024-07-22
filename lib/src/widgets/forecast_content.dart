import 'package:flutter/material.dart';

class ForecastContent extends StatelessWidget {
  final String forecast;
  const ForecastContent({super.key, required this.forecast});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        forecast.toUpperCase(),
        style: const TextStyle(
            color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
      ),
    );
  }
}
