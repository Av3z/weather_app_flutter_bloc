import 'package:flutter/material.dart';

class CityContent extends StatelessWidget {
  final String cityName;
  const CityContent({super.key, required this.cityName});

  @override
  Widget build(BuildContext context) {
    return Text(
      '🚩 $cityName',
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
