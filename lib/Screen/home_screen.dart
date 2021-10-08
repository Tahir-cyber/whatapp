// @dart=2.9

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/CameraPage.dart';
import 'package:whatsapp_clone/Pages/ChatPage.dart';
import 'package:whatsapp_clone/popupmenubutton/popupmenu_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     //App bar of the home Screen
     
      appBar: AppBar(
        backgroundColor: Color(0xFF075E54),
        title: Text('Whatsapp Clonee'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopUpHome(),
        ],

        //Tab Bar of the home Screen

        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(
              text: 'CHATS',
            ),
            Tab(
              text: 'STATUS',
            ),
            Tab(
              text: 'CALLS',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatPage(),
          Text('STATUS'),
          Text('CALLS'),
        ],
      ),
    );
  }
}
