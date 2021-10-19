import 'package:EPASIEN/screens/Ketersediaan_TT/components/list_kamar.dart';
import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/Ketersediaan_TT/components/list_kamar.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListKamar(),
      ],
    );
  }
}
