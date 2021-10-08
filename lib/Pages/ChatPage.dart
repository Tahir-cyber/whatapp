// @dart=2.9
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/ChatCustomCard.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screen/Select_Contacts.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats = [
    ChatModel(
      name: "Tahir",
      isGroup: false,
      currentMessage: "Hi everyone",
      time: "4.00",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Tayyab",
      isGroup: false,
      currentMessage: "Hi Tayyab how are you",
      time: "8.00 pm",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Umer",
      isGroup: false,
      currentMessage: "Hi Umer how are you",
      time: "12.00 pm",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Friends Group",
      isGroup: true,
      currentMessage: "Hi Tayyab how are you",
      time: "8.00 pm",
      icon: "groups.svg",
    ),
    ChatModel(
      name: "marsel",
      isGroup: false,
      currentMessage: "Hi marsel how are you",
      time: "8.00 pm",
      icon: "person.svg",
    ),
    ChatModel(
      name: "Chat Group",
      isGroup: true,
      currentMessage: "Hi Chat Group hope to fine",
      time: "8.00 pm",
      icon: "groups.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        //Chat Floating action button on chat page

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //from here it switch to select contacts page

            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SelectContact()));
          },
          child: Icon(Icons.chat),
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (contex, index) => ChatCustomCard(
                  chatModel: chats[index],
                )));
  }
}
