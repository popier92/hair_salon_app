import 'package:flutter/material.dart';
import 'package:hair_salon_app/pages/booking_page.dart';
import 'package:hair_salon_app/pages/appointments_page.dart';
import 'package:hair_salon_app/pages/cust_booking_page.dart';
import 'package:hair_salon_app/pages/home_page.dart';
import 'package:hair_salon_app/pages/profile_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

class PagesBar extends StatefulWidget {
  PagesBar({super.key});

  
  

  @override
  _PagesBarState createState() => _PagesBarState();
}

class _PagesBarState extends State<PagesBar> {
  int _selectedIndex = 0;
  final user = FirebaseAuth.instance.currentUser;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    BookingPage(),
    AppointmentsPage(),
    ProfilePage(),
  ];

  Widget booking_page(){
    if(user!.email == ''){
      return BookingPage();}
      else{
        return CustBookingPage();
      }
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Miricle Appointment App'),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Appointments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
