import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/body.dart';

class LayananUnggulan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var title = Get.arguments;
    // final SpecialOfferCard specialOfferCard =
    // ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: Text("Tarif ${title}"),
      ),
      body: Body(),
    );
  }
}
