import 'package:flutter/material.dart';

class StartChild extends StatelessWidget {
  final String date;
  final String time;
  StartChild({
    super.key,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          date,
          style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          time,
          style: TextStyle(
            color: Colors.white60,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
