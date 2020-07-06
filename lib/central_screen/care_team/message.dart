import 'package:flutter/material.dart';
import 'package:patientapp/central_screen/care_team/message_bubble.dart';
import 'package:patientapp/central_screen/care_team/message_text.dart';

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
    MessageText(message: 'Hey Justin', messageType: MessageType.Sender),
    MessageText(
        message: 'Hi Ethan! How ya doing?', messageType: MessageType.Receiver),
    MessageText(
        message: 'Im great. Hows it going with you',
        messageType: MessageType.Sender)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

              // TODO: look into the align widget

              Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    padding: EdgeInsets.only(left: 16, bottom: 10),
                    height: 80,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 21,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: TextField(
                            textCapitalization: TextCapitalization.sentences,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: EdgeInsets.only(right: 30, bottom: 15),
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () {
                      messages.add(MessageText(
                          message: 'hi', messageType: MessageType.Sender));
                    },
                    child: Icon(Icons.send),
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

