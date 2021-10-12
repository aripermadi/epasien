import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/Ketersediaan_TT/components/list_kamar.dart';

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
