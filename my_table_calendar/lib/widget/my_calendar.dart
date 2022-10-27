import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class myCalendar extends StatefulWidget {
  const myCalendar({Key? key}) : super(key: key);

  @override
  State<myCalendar> createState() => _myCalendarState();
}

class _myCalendarState extends State<myCalendar> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2022,1,1),
        lastDay: DateTime(2022,12,31),
        locale: 'ko-KR',
        headerStyle: HeaderStyle(
          titleCentered: true,
          formatButtonVisible: false,
          titleTextStyle: TextStyle(color: Colors.white),
          rightChevronIcon: Icon(Icons.chevron_right,color: Colors.white),
          leftChevronIcon: Icon(Icons.chevron_left,color: Colors.white)
      ),
        daysOfWeekHeight:30,
      calendarBuilders: CalendarBuilders(
        dowBuilder: (context, day) {
          switch(day.weekday){
            case 1:
              return Center(child: Text('월',style: TextStyle(color: Colors.white)));
            case 2:
              return Center(child: Text('화',style: TextStyle(color: Colors.white)),);
            case 3:
              return Center(child: Text('수',style: TextStyle(color: Colors.white)),);
            case 4:
              return Center(child: Text('목',style: TextStyle(color: Colors.white)),);
            case 5:
              return Center(child: Text('금',style: TextStyle(color: Colors.white)),);
            case 6:
              return Center(child: Text('토',style: TextStyle(color: Colors.red),));
            case 7:
              return Center(child: Text('일',style: TextStyle(color: Colors.red),));
          }
        },
      ),
      calendarStyle: CalendarStyle(
        defaultTextStyle: TextStyle(color: Colors.white),
        weekendTextStyle: TextStyle(color: Colors.red),
        outsideDaysVisible: false,

        todayDecoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle
        )
      ),

    );
  }
}
