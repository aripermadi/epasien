import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/fasilitas/controller/controllerrad.dart';
import 'package:get/get.dart';

class TarifRad extends StatefulWidget {
  @override
  _TarifRadState createState() => _TarifRadState();
}

class _TarifRadState extends State<TarifRad> {
  final controllerRad = Get.put(ControllerRad());
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
              if (controllerRad.listRad.length != 0) {
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
                          "${controllerRad.listRad.value[index].nmPerawatan}"),
                      subtitle:
                          Text(controllerRad.listRad.value[index].totalByr),
                    );
                  },
                  itemCount: controllerRad.listRad.length,
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
