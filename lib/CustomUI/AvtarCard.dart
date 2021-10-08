// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:whatsapp_clone/Model/ChatModel.dart';

class AvtarCard extends StatelessWidget {
  const AvtarCard({
    Key key,
     this.contact,
  }) : super(key: key);

  final ChatModel contact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Stack(
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
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 11,
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.clear,
                    color: Colors.white,
                    size: 11,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Text(
            contact.name,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
