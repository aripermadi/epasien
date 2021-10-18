import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/custom_surfix_icon.dart';
import 'package:flutter_kepegawaian/components/default_button.dart';
import 'package:flutter_kepegawaian/components/form_error.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/controllercekbooking.dart';
import 'package:flutter_kepegawaian/screens/booking/controller/models.dart';
import 'package:flutter_kepegawaian/size_config.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class CekBooking extends StatefulWidget {
  @override
  _CekBookingState createState() => _CekBookingState();
}

class _CekBookingState extends State<CekBooking> {
  final controllerbooking = Get.put(ControllerCekBooking());
  final dateFormat = DateFormat("dd-M-yyyy");
  final _formKey = GlobalKey<FormState>();
  String nobooking;
  String nohp;

  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text("Peringatan"),
      ),
      content: Text("Booking belum tervalidasi"),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text.rich(TextSpan(
              text: 'Cek Status Booking',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNoBookingFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNoHPFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Lanjut",
            press: () async {
              await controllerbooking.cekbookingperiksa();
              if (controllerbooking.hasilCekBooking.value ==
                  'booking_diterima') {
                Get.toNamed('/bookingditerima');
              } else if (controllerbooking.hasilCekBooking.value ==
                  'booking_Kedaluarsa') {
                showAlertDialog(context);
              } else
                return Center(
                  child: Text('ambil data'),
                );
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildNoBookingFormField() {
    return TextFormField(
      controller: controllerbooking.nobooking,
      onSaved: (newValue) => nobooking = newValue,
      onChanged: (value) {
        nobooking = value;
      },
      decoration: InputDecoration(
        labelText: "No Booking",
        hintText: "Isikan No Booking Anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildNoHPFormField() {
    return TextFormField(
      controller: controllerbooking.nohp,
      onSaved: (newValue) => nohp = newValue,
      onChanged: (value) {
        nohp = value;
      },
      decoration: InputDecoration(
        labelText: "No HP",
        hintText: "Isikan No HP anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Question mark.svg"),
      ),
    );
  }
}
