import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  final DateTime selectedDay;
  final int scheduleCount;

  const Todo({
    required this.selectedDay,
    required this.scheduleCount,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );

    return Container(
      color: Color.fromRGBO(226, 167, 194, 1.0),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${selectedDay.year}년 ${selectedDay.month}월 ${selectedDay.day}일',
              style: textStyle,
            ),
            Text(
              '오늘의 학습: $scheduleCount개',
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}

