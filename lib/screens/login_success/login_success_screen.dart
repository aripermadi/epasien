import 'package:flutter/material.dart';
import 'package:EPASIEN/components/coustom_bottom_nav_bar.dart';
import 'package:EPASIEN/enums.dart';

import 'components/body.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text(
          "Booking Berhasil",
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.favourite),
    );
  }
}
