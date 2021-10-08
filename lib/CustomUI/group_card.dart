// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:whatsapp_clone/Model/ChatModel.dart';


//this screen code is in ContactCard in tutorial but i separated for simplicity purpose  

class GroupCard extends StatelessWidget {
  final ChatModel contact;
  const GroupCard({
    Key key,
    this.contact,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 53,
        width: 50,
        child: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 23,
              child: SvgPicture.asset(
                'assets/icons/person.svg',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
            ),
            contact.select
                ? Positioned(
                    bottom: 5,
                    right: 4,
                    child: CircleAvatar(
                      radius: 11,
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      title: Text(
        contact.name,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        contact.staus,
        style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
