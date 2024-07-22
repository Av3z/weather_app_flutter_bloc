import 'package:flutter/material.dart';

class MainTempContent extends StatelessWidget {
  final String temp;
  const MainTempContent({super.key, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '$temp °C',
        style: const TextStyle(
            color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
      ),
    );
  }
}
