import 'package:flutter/material.dart';

class PopUpMenuContacts extends StatefulWidget {
  PopUpMenuContacts({Key? key}) : super(key: key);

  @override
  _PopUpMenuContactsState createState() => _PopUpMenuContactsState();
}

class _PopUpMenuContactsState extends State<PopUpMenuContacts> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text('Invite a friend'),
            value: 'Invite a friend',
          ),
          PopupMenuItem(
            child: Text('Contact'),
            value: 'Contact',
          ),
          PopupMenuItem(
            child: Text('Refresh'),
            value: 'Refresh',
          ),
          PopupMenuItem(
            child: Text('Help'),
            value: 'Help',
          ),
        ];
      },
    );
  }
}
