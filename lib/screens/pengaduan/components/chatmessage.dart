import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_kepegawaian/screens/pengaduan/components/models.dart';

class ChatPesan extends StatelessWidget {
  const ChatPesan({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 10, bottom: 10),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (messages[index].messageType == "receiver"
                      ? Colors.grey.shade200
                      : Colors.blue[200]),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  messages[index].messageContent,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
