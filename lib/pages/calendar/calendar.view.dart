// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsw_app/pages/calendar/calendar.view.dto.dart';
import 'package:nsw_app/pages/notification/widgets/btn_notification.dart';
import 'package:nsw_app/config.dart';

class CalendarView extends StatefulWidget {
  const CalendarView({Key? key, required this.calendarDto}) : super(key: key);

  final CalendarDto calendarDto;

  @override
  State<CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<CalendarView> {
  final List<NeatCleanCalendarEvent> _eventList = [
    NeatCleanCalendarEvent('นัดขึ้นทะเบียนเรือ',
        description: 'เลขทะเบียน TB00241',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 7, 45),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 9, 0),
        color: Colors.green,
        isMultiDay: false),
    NeatCleanCalendarEvent('นัดตรวจท่าเรือ',
        description: 'เลขทะเบียน TB00286',
        startTime: DateTime(DateTime.now().year, 3, 1, 10, 0),
        endTime: DateTime(DateTime.now().year, 3, 2, 12, 0),
        color: Colors.orange,
        isMultiDay: true),
    NeatCleanCalendarEvent('นัดตรวจท่าเรือ',
        description: 'เลขทะเบียน TB01551',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day - 3, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day - 1, 17, 0),
        color: Colors.pink,
        isAllDay: true),
    NeatCleanCalendarEvent('นัดขึ้นทะเบียนเรือ',
        description: 'เลขทะเบียน TB03874',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 14, 30),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day + 1, 17, 0),
        color: Colors.indigo,
        isMultiDay: false),
    NeatCleanCalendarEvent('นัดขึ้นทะเบียนเรือ',
        description: 'เลขทะเบียน TB02242',
        startTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 7, 45),
        endTime: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, 9, 0),
        color: Colors.indigo,
        isMultiDay: false),
  ];

  late CalendarDto calendarDto;
  @override
  void initState() {
    super.initState();
    setState(() {
      calendarDto = widget.calendarDto;
    });
  }

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
              style: Config.instance.f18boldblack,
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
          startOnMonday: false,
          weekDays: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'], //* Name top
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
          displayMonthTextStyle: Config.instance.f16normalblack,
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
