import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {

  DateTime todayDate = DateTime.now();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: calender(),
      
    );
  }

  Widget calender() {
    return TableCalendar(
      firstDay: DateTime.utc(todayDate.year, todayDate.month, todayDate.day),
      lastDay: DateTime.utc(todayDate.year, todayDate.month + 1, todayDate.day),
      focusedDay: todayDate,
    );
  }




}

