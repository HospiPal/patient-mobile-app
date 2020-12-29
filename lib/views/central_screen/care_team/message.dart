import 'package:flutter/material.dart';
import 'package:patientapp/views/central_screen/care_team/message_bubble.dart';
import 'package:patientapp/views/central_screen/care_team/message_text.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

// TODO: watch this video - https://www.youtube.com/watch?v=X00Xv7blBo0
// TODO: watch this video - https://www.youtube.com/watch?v=h-igXZCCrrc
// TODO: use list tiles for popups

enum MessageType {
  Sender,
  Receiver,
}

class _MessageState extends State<Message> {
  List<MessageText> messages = [
    MessageText(message: 'Hey Dr. Mulligan', messageType: MessageType.Sender),
    MessageText(
        message: 'Hi Ethan! How ya doing?', messageType: MessageType.Receiver),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: <Widget>[]),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return MessageBubble(
                    messageText: messages[index],
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  height: 70.0,
                  child: Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.add),
                        color: Theme.of(context).primaryColor,
                        onPressed: () {},
                      ),
                      Expanded(
                        child: TextField(
                          textCapitalization: TextCapitalization.sentences,
                          decoration: InputDecoration.collapsed(
                            hintText: "Message",
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.send),
                        iconSize: 25.0,
                        color: Theme.of(context).primaryColor,
                        onPressed: () {
                          setState(() {
                            messages.add(MessageText(
                                message: 'I\'m not feeling too great today',
                                messageType: MessageType.Sender));
                          });
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
