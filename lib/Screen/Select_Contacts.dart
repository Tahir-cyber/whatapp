// @dart=2.9
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/ButtonCard.dart';
import 'package:whatsapp_clone/CustomUI/contactcard.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screen/Create_Group.dart';
import 'package:whatsapp_clone/popupmenubutton/popupmenu_contacts.dart';

class SelectContact extends StatefulWidget {
  SelectContact({Key key}) : super(key: key);

  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  List<ChatModel> contacts = [
    ChatModel(name: "Tahir", staus: "Hi i am using Whatsapp"),
    ChatModel(name: "Tyyab", staus: "No calls Whatsapp only"),
    ChatModel(name: "umer", staus: "I am Busy"),
    ChatModel(name: "Ali", staus: "Urgent Calls Only"),
    ChatModel(name: "Tahir", staus: "Hi i am using Whatsapp"),
    ChatModel(name: "Tyyab", staus: "No calls Whatsapp only"),
    ChatModel(name: "umer", staus: "I am Busy"),
    ChatModel(name: "Ali", staus: "Urgent Calls Only"),
    ChatModel(name: "Tahir", staus: "Hi i am using Whatsapp"),
    ChatModel(name: "Tyyab", staus: "No calls Whatsapp only"),
    ChatModel(name: "umer", staus: "I am Busy"),
    ChatModel(name: "Ali", staus: "Urgent Calls Only"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Contact',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              '256 Contacts',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopUpMenuContacts(),
        ],
      ),
      body: ListView.builder(
        itemCount: contacts.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CreateGroup()));
              },
              child: ButtonCard(
                name: "New group",
                icon: Icons.group,
              ),
            );
          } else if (index == 1) {
            return ButtonCard(
              name: "New Contact",
              icon: Icons.person_add,
            );
          }
          return ContactCard(
            contact: contacts[index - 2],
          );
        },
      ),
    );
  }
}
