import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/components/listunggulan.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/components/search_field.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/components/tarif_ok.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/components/tarif_rad.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  var argument = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchField(),
        argument == "LAB"
            ? ListUnggulan()
            : argument == "Radiologi"
                ? TarifRad()
                : argument == "Operasi"
                    ? TarifOk()
                    : ListUnggulan(),
      ],
    );
  }
}
