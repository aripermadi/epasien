import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/components/custom_surfix_icon.dart';
import 'package:flutter_kepegawaian/components/default_button.dart';
import 'package:flutter_kepegawaian/components/form_error.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/controllerbooking.dart';
import 'package:flutter_kepegawaian/screens/sign_up/controller/controllerpoli.dart';
import 'package:get/get.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'package:intl/intl.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final controllerPoli = Get.put(ControllerPoli());
  final bookingController = Get.put(BookingController());
  final dateFormat = DateFormat("yyyy-MM-dd");
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String conform_password;
  bool remember = false;
  DateTime _date = DateTime.now();
  String _poli;
  String _valFriends;
  /*List _myFriends = [
    "POLIKLINIK UMUM",
    "POLIKLINIK DALAM",
    "POLIKLINIK THT",
    "POLIKLINIK KULIT",
    "POLIKLINIK MATA",
    "POLIKLINIK ONKOLOGI",
  ];*/

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

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2020),
        lastDate: new DateTime(2030));
    if (picked != null) {
      bookingController.tgl.value = picked;
      bookingController.tanggal.text = DateFormat('dd-MM-yyyy').format(picked);
    }
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Center(
        child: Text("Peringatan"),
      ),
      content: Text("Periksa ulang data anda"),
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
          buildNamaFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAlamatFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          Obx(
            () => pilihpoli(),
          ),
          SizedBox(height: getProportionateScreenHeight(30)),
          pilihtanggal(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPesanFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Lanjut",
            press: () async {
              //print(bookingController);
              await bookingController.booking();
              if (bookingController.berhasil.value == 'sukses') {
                Get.toNamed('/loginsukses');
              } else if (bookingController.berhasil.value == '') {
                showAlertDialog(context);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: bookingController.email,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        password = value;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Email Anda",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Question mark.svg"),
      ),
    );
  }

  TextFormField buildPesanFormField() {
    return TextFormField(
      controller: bookingController.pesan,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        password = value;
      },
      decoration: InputDecoration(
        labelText: "Pesan",
        hintText: "Pesan Anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Question mark.svg"),
      ),
    );
  }

  TextFormField buildNamaFormField() {
    return TextFormField(
      controller: bookingController.nama,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Nama",
        hintText: "Nama Anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildAlamatFormField() {
    return TextFormField(
      controller: bookingController.alamat,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Alamat",
        hintText: "Alamat Anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      controller: bookingController.nohp,
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "NO. HP",
        hintText: "No HP Anda",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  DropdownButtonFormField pilihpoli() {
    return DropdownButtonFormField(
      hint: Text("Pilih Poliklinik"),
      value: _poli,
      items: controllerPoli.listPoli.map((value) {
        return DropdownMenuItem(
          child: Text(value.nmPoli),
          value: value.kdPoli,
        );
      }).toList(),
      onChanged: (value) {
        _poli = value;
        bookingController.poliSelected.value = value;
      },
      decoration: InputDecoration(
        labelText: "Pilih Poli",

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField pilihtanggal() {
    return TextFormField(
      controller: bookingController.tanggal,
      readOnly: true,
      onTap: () {
        _selectDate();
      },
      decoration: InputDecoration(
        labelText: "TANGGAL",
        hintText: "Pilih Tanggal",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Mail.svg"),
      ),
    );
  }
}
