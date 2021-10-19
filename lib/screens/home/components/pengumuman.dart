import 'package:flutter/material.dart';
import 'package:EPASIEN/components/product_card.dart';
import 'package:EPASIEN/models/Product.dart';
import 'package:EPASIEN/screens/home/controller/controller.dart';
import 'package:EPASIEN/screens/home/controller/controllerpengumuman.dart';
import 'package:get/get.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class Pengumuman extends StatelessWidget {
  final controllerpengumuman = Get.put(ControllerPengumuman());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Pengumuman", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
      ],
    );
  }
}
