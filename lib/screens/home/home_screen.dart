import 'package:flutter/material.dart';
import 'package:EPASIEN/components/coustom_bottom_nav_bar.dart';
import 'package:EPASIEN/components/coustom_bottom_nav_bar_not_login.dart';
import 'package:EPASIEN/enums.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
