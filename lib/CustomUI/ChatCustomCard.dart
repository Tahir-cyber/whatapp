// @dart=2.9
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:whatsapp_clone/Model/ChatModel.dart';
import 'package:whatsapp_clone/Screen/IndividualPage.dart';

class ChatCustomCard extends StatelessWidget {
  const ChatCustomCard({
    Key key,
    this.chatModel,
  }) : super(key: key);

  final ChatModel chatModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Individualpage(chatModel: chatModel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              child: SvgPicture.asset(
                chatModel.isGroup
                    ? "assets/icons/groups.svg"
                    : "assets/icons/person.svg",
                color: Colors.white,
                width: 37,
                height: 37,
              ),
            ),
            trailing: Text(chatModel.time),
            title: Text(
              chatModel.name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 3),
                Text(
                  chatModel.currentMessage,
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
          Divider(thickness: 1),
        ],
      ),
    );
  }
}
