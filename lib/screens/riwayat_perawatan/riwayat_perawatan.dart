import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/coustom_bottom_nav_bar.dart';
import 'package:flutter_kepegawaian/enums.dart';

import 'components/body.dart';

class RiwayatPerawatan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        centerTitle: true,
        title: Text("Riwayat Kunjungan"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.riwayat),
    );
  }
}
