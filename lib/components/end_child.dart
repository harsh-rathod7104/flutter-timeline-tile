import 'package:flutter/material.dart';

class EndChild extends StatelessWidget {
  final String deliveryStatus;
  final String location;
  const EndChild(
      {super.key, required this.deliveryStatus, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            deliveryStatus,
            style: TextStyle(
              color: Colors.white60,
            ),
          ),
          Text(
            location,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
