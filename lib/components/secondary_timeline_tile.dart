import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:timeline_tile/timeline_tile.dart';

class SecondaryTimeLine extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final Widget startChild;
  final Widget endChild;

  const SecondaryTimeLine({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.startChild,
    required this.endChild,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TimelineTile(
        afterLineStyle: LineStyle(thickness: 1.8, color: Colors.black),
        beforeLineStyle: LineStyle(thickness: 1.8, color: Colors.black),
        indicatorStyle: IndicatorStyle(color: Colors.black, width: 15),
        alignment: TimelineAlign.manual,
        lineXY: 0.3,
        isFirst: isFirst,
        isLast: isLast,
        startChild: startChild,
        endChild: endChild,
      ),
    );
  }
}
