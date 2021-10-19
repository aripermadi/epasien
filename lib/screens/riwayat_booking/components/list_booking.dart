import 'package:flutter/material.dart';
import 'package:EPASIEN/size_config.dart';

class ListBooking extends StatefulWidget {
  ListBooking({Key key}) : super(key: key);
  @override
  _ListBookingState createState() => new _ListBookingState();
}

class _ListBookingState extends State<ListBooking> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: GestureDetector(
          child: Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: getProportionateScreenHeight(220),
            child: Card(
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20.0)),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Tanggal/Status",
                              style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Poliklinik:",
                              style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                              text: "Dokter:", style: TextStyle(fontSize: 20)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (5),
                    ),
                    Row(
                      children: [
                        Text.rich(TextSpan(
                            text: "Penjamin", style: TextStyle(fontSize: 20))),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            FlatButton(
                              color: Colors.orange[600],
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                              child: Text("Check IN"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            FlatButton(
                              color: Colors.orange[100],
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(20.0)),
                              child: Text("Batal"),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
