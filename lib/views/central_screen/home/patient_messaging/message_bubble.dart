import 'package:flutter/material.dart';

import 'message.dart';
import 'message_text.dart';

class MessageBubble extends StatefulWidget {
  final MessageText messageText;

  MessageBubble({@required this.messageText});

  @override
  _MessageBubbleState createState() => _MessageBubbleState();
}

class _MessageBubbleState extends State<MessageBubble> {
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),

      // TODO: look into the align widget

      child: Align(
        alignment: (widget.messageText.messageType == MessageType.Receiver
            ? Alignment.topLeft
            : Alignment.topRight),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: (widget.messageText.messageType == MessageType.Receiver
                  ? Theme.of(context).accentColor
                  : Theme.of(context).primaryColor),
            ),
            padding: EdgeInsets.all(16),
            child: getText(widget.messageText.messageType)),
      ),
    );
  }

  Widget getText(MessageType type) {
    if (type == MessageType.Receiver) {
      return Text(
        widget.messageText.message,
        style: TextStyle(color: Colors.white),
      );
    } else {
      return Text(
        widget.messageText.message,
        style: TextStyle(color: Colors.black),
      );
    }
  }
}
