import 'package:flutter/material.dart';


class PopUpHome extends StatefulWidget {
  PopUpHome({Key? key}) : super(key: key);

  @override
  _PopUpHomeState createState() => _PopUpHomeState();
}

class _PopUpHomeState extends State<PopUpHome> {
  @override
  Widget build(BuildContext context) {
    return  PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(child: Text('New group'), value: 'New group'),
                PopupMenuItem(
                  child: Text('New broadcast'),
                  value: 'New broadcast',
                ),
                PopupMenuItem(
                  child: Text('Whatsapp web'),
                  value: 'Whatsapp web',
                ),
                PopupMenuItem(
                  child: Text('Starred Messages'),
                  value: 'Starred Messages',
                ),
                PopupMenuItem(
                  child: Text('Settings'),
                  value: 'Settings',
                 ),
        ];
      },
    );
  }
}