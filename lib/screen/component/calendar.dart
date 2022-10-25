import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatelessWidget{
  final DateTime selectedDay;
  final DateTime focusedDay;
  final OnDaySelected? onDaySelected;

  const Calendar({
    required this.selectedDay,
    required this.focusedDay,
    required this.onDaySelected,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultBoxDeco = BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(6.0)
    );
    final defaultTextStyle = TextStyle(
        color: Colors.grey[600],
        fontWeight: FontWeight.w700,
    );

    return TableCalendar(
        locale: 'ko_KR',
        focusedDay: focusedDay,
        firstDay: DateTime(1900),
        lastDay: DateTime(2100),
        headerStyle: HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16.0
          )
        ),

          //달력 꾸미기
      calendarStyle: CalendarStyle(
        isTodayHighlighted: false,
        defaultDecoration: defaultBoxDeco,
        weekendDecoration: defaultBoxDeco,
        selectedDecoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
              color: Color.fromRGBO(226, 167, 194, 1.0),
              width: 1.0,
          ),
        ),
        outsideDecoration: BoxDecoration(
          shape: BoxShape.rectangle,
        ),
        defaultTextStyle: defaultTextStyle,
        weekendTextStyle: defaultTextStyle,
        selectedTextStyle: defaultTextStyle.copyWith(
          color: Color.fromRGBO(226, 167, 194, 1.0),
        )
      ),

          onDaySelected: onDaySelected,
        selectedDayPredicate: (DateTime date){
          if (selectedDay == null){
            return false;
          }
          return date.year == selectedDay!.year &&
            date.month == selectedDay!.month &&
            date.day == selectedDay!.day;
      },
    );
  }
}

