import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/components/chat.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/components/chatmessage.dart';

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
