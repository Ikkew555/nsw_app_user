// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/component/btn_notification.dart';
import 'package:nsw_app/config.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent('MultiDay Event A',
        description: 'test desc',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 10, 0),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 12, 0),
        color: Colors.orange,
        isMultiDay: true),
    NeatCleanCalendarEvent('Allday Event B',
        description: 'test desc',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day - 2, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 2, 17, 0),
        color: Colors.pink,
        isAllDay: true),
    NeatCleanCalendarEvent('Normal Event D',
        description: 'test desc',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 17, 0),
        color: Colors.indigo),
    NeatCleanCalendarEvent('Normal Event E',
        description: 'test desc',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 7, 45),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 9, 0),
        color: Colors.indigo),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text(
              "การนัดหมาย",
              style: GoogleFonts.prompt(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: true,
            actions: [
              NotificationButton(),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
        body: Calendar(
          eventTileHeight: 70, //*Events height
          startOnMonday: true,
          weekDays: [
            'Mon',
            'Tue',
            'Wed',
            'Thu',
            'Fri',
            'Sat',
            'Sun'
          ], //* Name top
          eventsList: _eventList, //*List of events
          isExpandable: false, //*Show day above list events
          eventDoneColor: Colors.green,
          selectedColor: Config.instance.color,
          selectedTodayColor: Config.instance.color,
          todayColor: Config.instance.color,
          eventColor: null,
          locale: 'th_TH',
          todayButtonText: 'วันนี้',
          hideTodayIcon: true, //*Hide label above month
          // allDayEventText: 'Ganztägig',
          multiDayEndText: 'End',
          isExpanded: true,
          expandableDateFormat: 'EEEE d MMMM yyyy',
          // datePickerType: DatePickerType.date, //*Hide calendar icon
          dayOfWeekStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 12),
        ),
      ),
    );
  }
}
