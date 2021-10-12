import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_kepegawaian/enums.dart';
import 'package:flutter_kepegawaian/screens/riwayat_booking/components/list_booking.dart';

class RiwayatBooking extends StatelessWidget {
  static String routeName = "/riwayatbooking";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        centerTitle: true,
        title: Text("Riwayat Booking"),
      ),
      body: ListBooking(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
