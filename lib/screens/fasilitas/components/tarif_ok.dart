import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/controller/controllerok.dart';
import 'package:get/get.dart';

class TarifOk extends StatefulWidget {
  @override
  _TarifOkState createState() => _TarifOkState();
}

class _TarifOkState extends State<TarifOk> {
  final okController = Get.put(OkController());
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Obx(() {
              if (okController.listOperasi.length != 0) {
                return ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      thickness: 2,
                    );
                  },
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          "${okController.listOperasi.value[index].nmPerawatan}"),
                      subtitle:
                          Text(okController.listOperasi.value[index].operator1),
                    );
                  },
                  itemCount: okController.listOperasi.length,
                );
              } else {
                return Center(
                  child: Text('Loading'),
                );
              }
            })
          ],
        ),
      ),
    );
  }
}
