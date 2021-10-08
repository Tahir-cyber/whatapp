// @dart=2.9
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/AvtarCard.dart';

import 'package:whatsapp_clone/CustomUI/group_card.dart';
import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/popupmenubutton/popupmenu_contacts.dart';

class CreateGroup extends StatefulWidget {
  CreateGroup({Key key}) : super(key: key);

  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
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
  List<ChatModel> groups = [];
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
              'New Group',
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
            ),
            Text(
              'Add Participants',
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
      body: Stack(
        children: [
          ListView.builder(
            itemCount: contacts.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  height: groups.length > 0 ? 90 : 10,
                );
              }
              return InkWell(
                onTap: () {
                  if (contacts[index - 1].select == false) {
                    setState(() {
                      contacts[index - 1].select = true;
                      groups.add(contacts[index - 1]);
                    });
                  } else {
                    setState(() {
                      contacts[index - 1].select = false;
                      groups.remove(contacts[index - 1]);
                    });
                  }
                },
                child: GroupCard(
                  contact: contacts[index - 1],
                ),
              );
            },
          ),
          groups.length > 0
              ? Column(
                  children: [
                    Container(
                      height: 75,
                      color: Colors.white,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: contacts.length,
                          itemBuilder: (context, index) {
                            if (contacts[index].select == true) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    contacts[index].select = false;
                                    groups.remove(contacts[index]);
                                  });
                                },
                                child: AvtarCard(
                                  contact: contacts[index],
                                ),
                              );
                            } else {
                              return Container();
                            }
                          }),
                    ),
                    Divider(
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
