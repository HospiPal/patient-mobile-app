import 'package:flutter/material.dart';

class MessageModel<T> {
  T text;
  MessageType messageType;

  MessageModel({@required this.text, @required this.messageType});
}

enum MessageType {
  Sender,
  Receiver,
}
