import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/booking/cekbooking.dart';

class Booking extends StatelessWidget {
  static String routeName = "/booking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text(""),
      ),
      body: GestureDetector(child: CekBooking()),
    );
  }
}
