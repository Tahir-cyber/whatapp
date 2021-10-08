import 'package:flutter/material.dart';

class PopUpMenuButton extends StatefulWidget {
  PopUpMenuButton({Key? key}) : super(key: key);

  @override
  _PopUpMenuButtonState createState() => _PopUpMenuButtonState();
}

class _PopUpMenuButtonState extends State<PopUpMenuButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        print(value);
      },
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: Text('View contacts'),
            value: 'View contacts',
          ),
          PopupMenuItem(
            child: Text('Media, links and Docs'),
            value: 'Media, links and docs',
          ),
          PopupMenuItem(
            child: Text('Whatsapp Web'),
            value: 'Whatsapp Web',
          ),
          PopupMenuItem(
            child: Text('Search'),
            value: 'Search',
          ),
          PopupMenuItem(
            child: Text('Mute Notification'),
            value: 'Mute Notification',
          ),
          PopupMenuItem(
            child: Text('Wallpaper'),
            value: 'WallPaper',
          ),
        ];
      },
    );
  }
}
