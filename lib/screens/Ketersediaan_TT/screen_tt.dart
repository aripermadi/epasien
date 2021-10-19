import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/Ketersediaan_TT/components/list_kamar.dart';

class KetersediaanTT extends StatelessWidget {
  static String routeName = "/ketersediaan_tt";
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Ketersediaan Tempat Tidur"),
      ),
      body: ListKamar(),
    );
  }
}
