import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/home/components/special_offers.dart';
import 'package:flutter_kepegawaian/screens/jadwal_dokter/components/list_dokter.dart';
import 'package:get/get.dart';
import 'controller/controller.dart';

class JadwalDokter extends StatelessWidget {
  final dokterController = Get.put(DokterController());
  static String routeName = "/jadwaldokter";

  DateTime selectedDate = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != dokterController.tanggal.value) {
      // setState(() {
      //   _date = newDate;
      // });
      dokterController.tanggal.value = picked;
      await dokterController.dokter();
    }
  }

  @override
  Widget build(BuildContext context) {
    final SpecialOfferCard specialOfferCard =
        ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Jadwal Dokter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.date_range),
            tooltip: 'Setting Icon',
            onPressed: () {
              _selectDate(context);
            },
          ),
        ],
      ),
      body: ListDokter(),
    );
  }
}
