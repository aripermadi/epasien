import 'package:flutter/material.dart';
import 'package:EPASIEN/screens/pengaduan/components/chat.dart';
import 'package:EPASIEN/screens/pengaduan/components/chatmessage.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ChatPesan(),
          Chat(),
        ],
      ),
    );
  }
}
