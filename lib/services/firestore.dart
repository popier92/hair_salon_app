import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference appointment_slot = FirebaseFirestore.instance.collection('appointmentSlots');
  final CollectionReference user_data = FirebaseFirestore.instance.collection('user_data');

 


  Future<void> createUser(String name, String email, String role) async {
    try {
      await user_data.add({
        'name': name,
        'email': email,
        'role': role,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<void> createAppointmentSlot(String date, String time,String stylist) async {
    try {
      await appointment_slot.add({
        'date': date,
        'time': time,
        'stylist': stylist,
        'customer': '',
      });

      print('Appointment slot created: $date $time');
    } catch (e) {
      rethrow;
    }
  }

  Stream<QuerySnapshot> getAppointmentSlots() {
    return appointment_slot.snapshots();
  }

  Future<DocumentSnapshot> getUserData(String email) async {
    QuerySnapshot querySnapshot = await user_data.where('email', isEqualTo: email).get();
    return querySnapshot.docs.isNotEmpty ? querySnapshot.docs.first : throw Exception('User not found');
  }

  Future<String> getUserRole(String email) async {
    DocumentSnapshot doc = await getUserData(email);
    return doc['role'];
  }

  Future<bool> checkAvailability(String day, String time) async {
    print('Looking for day: $day time: $time');
    QuerySnapshot value = await appointment_slot.get();
    for (var element in value.docs) {
      if (element['date'] == day.toString() && element['time'] == time) {
        return true;
      }
      //print('date: ${element['date']} time: ${element['time']}');
    }
    return false;
  }

  Future<void> bookAppointment(String date, String time, String customer) async {
    QuerySnapshot value = await appointment_slot.get();
    for (var element in value.docs) {
      if (element['date'] == date && element['time'] == time ) {
        await appointment_slot.doc(element.id).update({'customer': customer});
        return;
      }
    }
  }

  Future<void> cancelAppointment(String date, String time) async {
    QuerySnapshot value = await appointment_slot.get();
    for (var element in value.docs) {
      if (element['date'] == date && element['time'] == time ) {
        await appointment_slot.doc(element.id).update({'customer': ''});
        return;
      }
    }
  }

  Future<String> hasBooked(String date, String time, String customer) async {
    QuerySnapshot value = await appointment_slot.get();
    for (var element in value.docs) {
      if (element['date'] == date && element['time'] == time && element['customer'] == customer) {
        return 'You have Booked this slot';
      }
    }
    return 'Open Slot';
  }

}