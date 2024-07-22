import 'package:flutter/material.dart';

class TimeDayContent extends StatelessWidget {
  final String timeDay;
  const TimeDayContent({super.key, required this.timeDay});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        timeDay,
        style: const TextStyle(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
      ),
    );
  }
}
