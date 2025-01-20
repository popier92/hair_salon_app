import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hair_salon_app/services/firestore.dart';

class CustBookingPage extends StatefulWidget {
  const CustBookingPage({Key? key}) : super(key: key);

  @override
  State<CustBookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<CustBookingPage> {
  final FirestoreService _firestoreService = FirestoreService();
  final user = FirebaseAuth.instance.currentUser;

  DateTime todayDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  String timeString = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Page'),
      ),
      body: Column(children: [
        calender(),
        FutureBuilder(
            future: _firestoreService.getAppointmentSlots().first,
            builder: (context, snapshot) {
              return slots();
            }),
      ]),
    );
  }

  void onDaySelected(DateTime date ) {
    setState(() {
      selectedDate = date;
    });
  }

  Future<String> checkAvailability(String date, String time) async {
    bool isAvailable = await _firestoreService.checkAvailability(date, time);
    return isAvailable ? _firestoreService.hasBooked(date, time, user?.email ?? 'unknown') : 'No Slots Available';
  }

  DateTime dateOnly(DateTime date) {
    return DateTime.utc(date.year, date.month, date.day);
  }

  String timeToString(TimeOfDay time) {
    return '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
  }

  Widget calender() {
    return TableCalendar(
      firstDay: DateTime.utc(todayDate.year, todayDate.month, todayDate.day),
      lastDay: DateTime.utc(todayDate.year, todayDate.month + 1, todayDate.day),
      focusedDay: todayDate,
    );
  }

  Widget slots() {
    return Expanded(
      child: ListView(
        children: List.generate(
            16,
            (index) => FutureBuilder<String>(
                future: checkAvailability(
                    dateOnly(selectedDate).toString(),
                    timeToString(TimeOfDay(
                        hour: 9 + (index / 2).floor(),
                        minute: index % 2 == 0 ? 0 : 30))),
                builder: (context, snapshot) {
                  return ListTile(
                    title: Text(
                        'Time Slot ${timeToString(TimeOfDay(hour: 9 + (index / 2).floor(), minute: index % 2 == 0 ? 0 : 30))}'),
                    subtitle: Text(snapshot.data ?? 'Loading...'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        if (user?.email != null) {
                          
                          timeString = timeToString(TimeOfDay(
                              hour: 9 + (index / 2).floor(),
                              minute: index % 2 == 0 ? 0 : 30));


                          _firestoreService.checkAvailability(dateOnly(selectedDate).toString(),
                              timeString).then((isAvailable) {
                            if (isAvailable) {
                              _firestoreService.createAppointmentSlot(
                                  dateOnly(selectedDate).toString(),
                                  timeString,
                                  user!.email!);
                              setState(() {});
                            }
                          });
                        }
                        _firestoreService.bookAppointment(
                            dateOnly(selectedDate).toString(),
                            timeToString(TimeOfDay(
                                hour: 9 + (index / 2).floor(),
                                minute: index % 2 == 0 ? 0 : 30)),
                            user!.email!);
                        setState(() {
                          
                        });
                      },
                      child: Text('Book'),
                    ),
                  );
                })),
      ),
    );
  }
}
