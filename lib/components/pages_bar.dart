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
  List<Widget> _widgetOptions() {
    return <Widget>[
      HomePage(),
      booking_page(),
      AppointmentsPage(),
      ProfilePage(),
    ];
  }

  Widget booking_page(){
    if(user!.email == 'test@email.com'){
      return BookingPage();}
      else{
        return CustBookingPage();
      }
  }

  void signout() async {
    await FirebaseAuth.instance.signOut();
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
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: signout,
          ),
        ],
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions(),
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
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
