import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimelineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  const MyTimelineTile(
      {super.key,
      required this.isFirst,
      required this.isLast,
      required this.isPast});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.25,
      child: TimelineTile(
        indicatorStyle: IndicatorStyle(
          color: isPast ? Colors.red: Colors.grey,
          iconStyle: IconStyle(
              iconData:
                  isPast ? Icons.check : Icons.radio_button_unchecked_outlined,
              color: Colors.white),
          height: 22,
        ),
        afterLineStyle:
            LineStyle(color: isPast ?  Colors.red : Colors.grey),
        beforeLineStyle:
            LineStyle(color: isPast ? Colors.red: Colors.grey),
        isFirst: isFirst,
        axis: TimelineAxis.horizontal,
        isLast: isLast,
      ),
    );
  }
}
