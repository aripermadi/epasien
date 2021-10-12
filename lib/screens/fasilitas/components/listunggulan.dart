import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/fasilitas/controller/controllerlab.dart';
import 'package:get/get.dart';

class ListUnggulan extends StatefulWidget {
  @override
  _ListUnggulanState createState() => _ListUnggulanState();
}

class _ListUnggulanState extends State<ListUnggulan> {
  final layananController = Get.put(LayananController());

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
              if (layananController.listLaborat.length != 0) {
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
                          "${layananController.listLaborat.value[index].nmPerawatan}"),
                      subtitle: Text(
                          layananController.listLaborat.value[index].totalByr),
                    );
                  },
                  itemCount: layananController.listLaborat.length,
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
